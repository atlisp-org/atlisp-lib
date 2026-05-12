# AGENTS.md - @lisp 函数库

## 概述

这是 AutoCAD 的 AutoLisp 函数库。代码在 `src/` 目录下，按类别分组（如 `block/`, `entity/`, `string/`）。

## 函数命名规范

- 格式: `category:functionname` (例: `m:gcd`, `ini:parse`, `entity:getdxf`)
- 每个函数文件必须包含 docstrings:
  ```lisp
  (defun m:gcd (a b)
    "求最大公约数"
    "integer - 返回最大公约数，参数为0时返回nil"
    ;; 函数体
  )
  ```

## 依赖

- 使用 `(require '(p:* string:*))` 加载依赖
- 依赖来自同库其他类别（如 `p:`, `string:`, `list:` 等）

## 测试

- 测试框架: `src/fun/test-framework.lsp`
- 测试文件: `test/*.lsp`
- 测试在 CAD 环境中运行（不是命令行）
- 运行测试:
  ```lisp
  (test:suite 'your-suite)
  (test:add-case 'your-suite 'test-name '(lambda () ...) expected)
  (test:run-all)
  ```

## 目录结构

- `src/` - 所有函数，按类别目录分组
- `test/` - 测试文件
- `doc/` - 文档
- 无 CI/构建系统，纯源码分发