# @lisp 函数库代码优化报告

## 1. 统计概览

| 分类 | 文件数 | 代码行数 | 主要问题 |
|------|--------|----------|----------|
| vectra | 152 | ~1500 | 命名混乱, 缺少docstring |
| entity | 62 | ~2000 | 缺少错误处理 |
| list | 58 | ~1200 | 存在重复函数 |
| m | 56 | ~800 | 缺少参数验证 |
| curve | 45 | ~1800 | 复杂函数未优化 |
| string | 38 | ~900 | 冗余实现 |
| excel | 33 | ~2500 | 外部依赖 |
| pickset | 32 | ~600 | 类型判断重复 |
| std | 29 | ~800 | 全局变量污染 |
| dcl | 24 | ~1200 | 状态管理混乱 |
| layer | 23 | ~500 | 重复代码 |
| 其他 | ~300 | ~5000 | 缺少文档 |
| **总计** | **844** | **~18500** | |

---

## 2. 问题分类与优化建议

### 2.1 高优先级问题

#### 2.1.1 全局变量污染

**问题描述**: 函数内部使用未声明的局部变量，污染全局命名空间。

**受影响的文件** (约40个):
- `json/parse.lsp` - 使用未声明变量 `lst-str`, `flag-escape` 等
- `curve/inters.lsp` - 使用未声明变量 `res`, `lst` 等
- `dcl/new.lsp` - 使用未声明全局变量 `dcl-id`, `dcl-tmp`

**优化建议**:
```lisp
; 优化前
(defun json:parse (str)
  (setq lst-str (vl-string->list str))  ; 全局变量
  (setq flag-escape nil)                  ; 全局变量
  ...)

; 优化后
(defun json:parse (str / lst-str flag-escape flag-quote flag-keylevel flag-arraylevel atom-str-lst pre-char curr-char)
  (setq lst-str (vl-string->list str))
  (setq flag-escape nil)
  ...)
```

---

#### 2.1.2 缺少 Docstring

**问题描述**: 约60%的函数缺少标准docstring格式。

**受影响的文件** (示例):
- `vectra/vector-angle.lsp` - 无docstring
- `vectra/vector-len.lsp` - 无docstring
- `m/factorial.lsp` - 无返回类型和示例
- `m/evenp.lsp` - 无示例

**优化建议**:
```lisp
; 优化前
(defun m:evenp (n)
  (= 0 (rem (fix n) 2)))

; 优化后
(defun m:evenp (n)
  "测试一个整数是否为偶数"
  "T or nil - n为偶数返回T，否则返回nil"
  "(m:evenp 4) => T"
  "(m:evenp 5) => nil"
  (= 0 (rem (fix n) 2)))
```

---

#### 2.1.3 错误处理不一致

**问题描述**: 关键函数缺少 `*error*` 处理。

**受影响的文件** (示例):
- `entity/make-line.lsp` - 无错误处理
- `ini/parse.lsp` - 错误处理不完整
- `m/gcd.lsp` - 混合副作用和返回值

**优化建议**:
```lisp
; 优化前
(defun entity:make-line (startpt endpt)
  "两点创建直线"
  (entmakex (list ...)))

; 优化后
(defun entity:make-line (startpt endpt / *error*)
  "两点创建直线"
  "图元名 - 成功返回图元名，失败返回nil"
  (defun *error* (msg)
    (princ (strcat "entity:make-line 错误: " msg))
    nil)
  (entmakex (list ...)))
```

---

### 2.2 中优先级问题

#### 2.2.1 代码重复

**问题描述**: 相似功能在不同文件中重复实现。

| 重复类型 | 文件 | 说明 |
|----------|------|------|
| split-3d | curve/inters.lsp, list/split-3d.lsp | 列表切分功能 |
| 类型判断 | p/*.lsp 中多个文件 | picksetp, enamep 等 |
| reverse+append | curve/inters.lsp | O(n²) 复杂度 |

**优化建议**:
```lisp
; 优化前 - O(n²)
(setq rtn (cons (getinterpts ob1 ob2 mode) rtn))
(apply 'append (reverse rtn))

; 优化后 - O(n)
(push (getinterpts ob1 ob2 mode) rtn)
(setq result (reverse rtn))
```

---

#### 2.2.2 性能问题

**问题描述**: 存在效率低下的代码模式。

**示例文件**: `curve/inters.lsp`, `json/parse.lsp`

**优化建议**:
1. 使用 `push/nreverse` 替代 `cons/reverse`
2. 避免重复计算 `length`
3. 减少不必要的 `mapcar`

---

#### 2.2.3 依赖声明不明确

**问题描述**: `require` 语句过于宽泛。

**示例**:
```lisp
; 当前
(require '(p:* string:*))

; 建议
(require '(p:vlap p:enamep p:picksetp string:to-list string:from-list))
```

---

### 2.3 低优先级问题

#### 2.3.1 缩进不一致

**问题描述**: Tab/空格混用，缩进深度不统一。

**建议**: 统一使用 2 空格缩进

#### 2.3.2 命名不一致

**问题描述**: 混用 `:` 和 `-` 分隔符。

**建议**: 统一使用 `:` 分隔 (如 `entity:make-line`)

#### 2.3.3 冗余代码

**问题描述**: 空行、注释过多的文件。

**建议**: 清理不必要的空行

---

## 3. 按分类详细优化建议

### 3.1 vectra (152 文件) - 最高优先级

**主要问题**:
- 缺少 docstring (约80%)
- 命名与 entity/curve 分类重复

**建议**:
1. 补全所有 docstring
2. 评估是否与 entity/curve 分类重复，考虑合并

---

### 3.2 entity (62 文件) - 高优先级

**主要问题**:
- 缺少 `*error*` 处理
- entmakex 返回值未验证

**需优化文件**:
- `make-line.lsp`
- `make-circle.lsp`
- `make-arc.lsp`
- `make-polyline.lsp`
- `getdxf.lsp`
- `putdxf.lsp`

---

### 3.3 json (4 文件) - 高优先级

**主要问题**:
- `parse.lsp` 全局变量污染严重
- 逻辑复杂，难以维护

**优化后代码**:
```lisp
(defun json:parse (str / lst-str flag-escape flag-quote flag-keylevel
                          flag-arraylevel atom-str-lst pre-char curr-char)
  "JSON 字符串转换为 Lisp 列表"
  "list"
  (setq lst-str (vl-string->list str))
  (setq flag-escape nil)
  (setq flag-quote nil)
  ...
```

---

### 3.4 curve (45 文件) - 中优先级

**主要问题**:
- `inters.lsp` 性能差
- 存在重复辅助函数

**优化建议**:
```lisp
;; 使用 push/nreverse 优化
(defun inter-objlist (lst / ob1 rtn)
  (cond ...)
  (while (setq ob1 (car lst))
    (foreach ob2 (setq lst (cdr lst))
      (push (getinterpts ob1 ob2 acextendnone) rtn)))
  (reverse rtn))
```

---

### 3.5 list (58 文件) - 中优先级

**主要问题**:
- 部分函数实现重复
- 递归可改为迭代

**建议**:
1. 统一 `split`, `split-2d`, `split-3d` 实现
2. 优化递归为迭代避免栈溢出

---

### 3.6 m (56 文件) - 中优先级

**主要问题**:
- 参数验证缺失
- 负数处理不一致

**需优化文件**:
- `gcd.lsp` - 返回值与副作用混淆
- `factorial.lsp` - 缺少参数检查

---

### 3.7 dcl (24 文件) - 中优先级

**主要问题**:
- 全局变量 `dcl-id`, `dcl-tmp`
- 回调函数硬编码

**优化建议**:
```lisp
;; 使用局部变量
(defun dcl:new (name / dcl-id dcl-tmp)
  (setq dcl-id (load_dialog dcl-tmp))
  ...)
```

---

### 3.8 std (29 文件) - 低优先级

**主要问题**:
- 少数函数有全局变量

**需优化文件**:
- `catchapply.lsp` (局部变量未声明)

---

## 4. 批量修复建议

### 4.1 脚本检查项目

1. **未声明局部变量**: 扫描 `/` 后的变量
2. **缺失 docstring**: 检查函数定义后第2行是否为字符串
3. **错误处理缺失**: 检查是否有 `*error*` 定义
4. **cons/reverse 模式**: 查找可优化的 `reverse` + `append/cons`

### 4.2 修复优先级

| 优先级 | 任务 | 预计工作量 |
|--------|------|------------|
| P0 | 修复 json/parse.lsp 全局变量 | 1小时 |
| P0 | 修复 curve/inters.lsp 性能 | 2小时 |
| P1 | 补全 entity/* docstring | 4小时 |
| P1 | 补全 vectra/* docstring | 6小时 |
| P2 | 统一缩进格式 | 8小时 |
| P2 | 优化 list 重复函数 | 4小时 |
| P3 | 优化命名规范 | 4小时 |

---

## 5. 总结

### 主要发现

1. **代码质量**: 约40%文件有严重问题，60%有中等问题
2. **可维护性**: 缺少统一规范导致维护困难
3. **性能**: 存在 O(n²) 复杂度的代码可优化
4. **文档**: 60%函数缺少标准 docstring

### 建议行动

1. **立即修复**: json/parse.lsp, curve/inters.lsp
2. **短期目标**: 补全所有 entity/vectra 函数文档
3. **长期目标**: 建立代码规范，自动化检查

---

*报告生成时间: 2026-05-08*
*分析文件数: 844*
*总代码行数: ~18500*