#!/usr/bin/env python3
"""Generate AI-readable JSON manifest of all @lisp functions."""

import os
import json
import re
from collections import OrderedDict

SRC_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "src")


def parse_func_file(filepath):
    """Parse a single .lsp file and extract function metadata."""
    with open(filepath, "r", encoding="utf-8", errors="replace") as f:
        content = f.read()
    lines = content.split("\n")

    result = {
        "file": os.path.relpath(filepath, SRC_DIR),
        "function": None,
        "category": None,
        "original_name": None,
        "params": [],
        "locals": [],
        "description": "",
        "returns": "",
        "examples": [],
        "dependencies": [],
    }

    # Pattern for defun: (defun or defun-q, case-insensitive
    # Function name can contain ->, +, ^, -, etc.
    defun_re = re.compile(
        r"^\s*\(defun(?:-q)?\s+([\w-]+):([^\s\"(]+)\s*(.*)",
        re.IGNORECASE
    )

    for i, line in enumerate(lines):
        stripped = line.strip()
        if not stripped or stripped.startswith(";"):
            continue

        m = defun_re.match(stripped)
        if not m:
            continue

        category = m.group(1).lower()
        name = m.group(2)
        rest = m.group(3).rstrip()

        result["category"] = category
        result["original_name"] = f"{m.group(1)}:{name}"
        result["function"] = f"{category}:{name.lower()}"

        # Check for inline docstring on defun line
        inline_doc = None
        params_part = rest
        if '"' in rest:
            idx = rest.index('"')
            params_part = rest[:idx].strip()
            doc_match = re.search(r'"((?:[^"\\]|\\.)*)"', rest[idx:])
            if doc_match:
                inline_doc = doc_match.group(1)

        # Parse parameter list
        if params_part.startswith("nil") or params_part.startswith("("):
            param_match = re.match(r"\(([^)]*)\)", params_part)
            if param_match:
                param_content = param_match.group(1)
                if "/" in param_content:
                    p, l = param_content.split("/", 1)
                    result["params"] = [x.strip() for x in p.split() if x.strip()]
                    result["locals"] = [x.strip() for x in l.split() if x.strip()]
                else:
                    result["params"] = [
                        x.strip() for x in param_content.split() if x.strip()
                    ]
                    result["locals"] = []
            elif params_part.startswith("nil"):
                result["params"] = []
                result["locals"] = []

        # Collect docstrings from subsequent lines
        if inline_doc is not None:
            result["description"] = inline_doc
            # More docstrings follow on next lines
            j = i + 1
            extra = _collect_docstrings(lines, j)
            if extra:
                result["returns"] = extra[0]
                result["examples"] = extra[1:]
        else:
            j = i + 1
            docs = _collect_docstrings(lines, j)
            if docs:
                result["description"] = docs[0]
            if len(docs) >= 2:
                result["returns"] = docs[1]
            if len(docs) >= 3:
                result["examples"] = docs[2:]

        break  # Only parse the first defun

    # Extract require statements for dependencies
    require_re = re.compile(r"""\(require\s+(?:\(quote\s+)?[']?([^)]+)\)""")
    for line in lines:
        stripped = line.strip()
        # Skip comments, docstrings, and empty lines
        if not stripped or stripped.startswith(";") or stripped.startswith('"'):
            continue
        rm = require_re.search(stripped)
        if rm:
            dep_raw = rm.group(1).strip()
            # Strip leading '(' if present (e.g. from '(p:* string:*)')
            if dep_raw.startswith("("):
                dep_raw = dep_raw[1:].strip()
            result["dependencies"].append(dep_raw)

    return result


def _collect_docstrings(lines, start):
    """Collect consecutive string literal lines starting from index `start`."""
    docs = []
    j = start
    while j < len(lines):
        ls = lines[j].strip()
        if not ls:
            j += 1
            continue
        # Starts with a double-quote anywhere on line
        if ls.startswith('"'):
            # Single-line string
            if ls.endswith('"'):
                docs.append(ls[1:-1])
                j += 1
            else:
                # Multi-line string
                full = ls[1:]
                j += 1
                while j < len(lines):
                    inner = lines[j].strip()
                    if inner.endswith('"'):
                        full += "\n" + inner[:-1]
                        j += 1
                        break
                    else:
                        full += "\n" + inner
                        j += 1
                docs.append(full)
        else:
            break
    return docs


def generate_manifest():
    """Generate the complete JSON manifest."""
    categories = {}
    all_functions = {}
    stats = {"total_files": 0, "total_with_docs": 0, "total_without_docs": 0}

    for root, dirs, files in os.walk(SRC_DIR):
        for fname in sorted(files):
            if not fname.endswith(".lsp"):
                continue

            filepath = os.path.join(root, fname)
            info = parse_func_file(filepath)
            stats["total_files"] += 1

            cat = info["category"] or "uncategorized"
            if cat not in categories:
                categories[cat] = {"functions": []}

            func_entry = OrderedDict([
                ("name", info["function"] or fname.replace(".lsp", "")),
                ("original_name", info.get("original_name") or info["function"]),
                ("file", info["file"]),
                ("params", info["params"]),
                ("locals", info["locals"]),
                ("description", info["description"]),
                ("returns", info["returns"]),
                ("examples", info["examples"]),
                ("dependencies", info["dependencies"]),
            ])

            categories[cat]["functions"].append(func_entry)

            if info["function"]:
                all_functions[info["function"]] = func_entry

            if info["description"]:
                stats["total_with_docs"] += 1
            else:
                stats["total_without_docs"] += 1

    # Add category-level metadata
    for cat_key, cat_data in categories.items():
        cat_data["count"] = len(cat_data["functions"])

    # Sort categories by name
    sorted_categories = OrderedDict(
        sorted(categories.items(), key=lambda x: x[0])
    )

    # Determine category descriptions from readme functions
    cat_descriptions = {}
    for cat_key, cat_data in sorted_categories.items():
        for func in cat_data["functions"]:
            if func["name"].endswith(":readme"):
                cat_descriptions[cat_key] = func["description"]
                break

    manifest = OrderedDict([
        ("_meta", OrderedDict([
            ("generated", "2026-05-13"),
            ("total_categories", len(sorted_categories)),
            ("total_functions", stats["total_files"]),
            ("total_with_documentation", stats["total_with_docs"]),
            ("total_without_documentation", stats["total_without_docs"]),
            ("description", "@lisp 函数库 - AI Agent 可读清单"),
            ("naming_convention", "category:function-name (e.g. m:gcd, entity:getdxf)"),
            ("dependency_syntax", "(require 'category:*) 或 (require '(cat1:* cat2:*))"),
        ])),
        ("categories", {}),
        ("all_functions", OrderedDict(sorted(all_functions.items()))),
    ])

    # Build categories section with descriptions
    cat_section = OrderedDict()
    for cat_key, cat_data in sorted_categories.items():
        cat_section[cat_key] = OrderedDict([
            ("description", cat_descriptions.get(cat_key, "")),
            ("count", cat_data["count"]),
            ("functions", cat_data["functions"]),
        ])

    manifest["categories"] = cat_section

    return manifest


if __name__ == "__main__":
    manifest = generate_manifest()
    output_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "functions.json")
    with open(output_path, "w", encoding="utf-8") as f:
        json.dump(manifest, f, ensure_ascii=False, indent=2)
    print(f"Manifest generated: {output_path}")
    print(f"  Categories: {manifest['_meta']['total_categories']}")
    print(f"  Functions:  {manifest['_meta']['total_functions']}")
    print(f"  With docs:  {manifest['_meta']['total_with_documentation']}")
    print(f"  Without:    {manifest['_meta']['total_without_documentation']}")
