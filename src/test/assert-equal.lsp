(defun test:assert-equal (expected actual fuzz)
  "断言两个值相等，支持浮点数容差比较"
  "参数: expected - 期望值；actual - 实际值；fuzz - 浮点数比较的容差（数字和列表中的浮点数元素）"
  "返回: t 或 nil"
  "说明: 数字使用 equal 加容差比较；列表使用 list:equal 递归比较；其他类型直接使用 equal"
  "示例: (test:assert-equal 3.14 3.14159 0.01) => t"
  "示例: (test:assert-equal '(1.0 2.0) '(1.0 2.0) 1e-6) => t"
  (cond
   ((and (numberp expected) (numberp actual))
    (equal expected actual fuzz))
   ((and (listp expected) (listp actual))
    (list:equal expected actual fuzz))
   (t (equal expected actual))))
