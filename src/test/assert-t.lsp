(defun test:assert-t (val)
  "断言值为真（不为 nil）"
  "参数: val - 要测试的值"
  "返回: t - 值不为 nil；nil - 值为 nil"
  "示例: (test:assert-t t) => t"
  "示例: (test:assert-t 1) => t"
  "示例: (test:assert-t nil) => nil"
  (not (null val)))
