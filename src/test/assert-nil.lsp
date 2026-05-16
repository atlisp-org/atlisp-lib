(defun test:assert-nil (val)
  "断言值为 nil"
  "参数: val - 要测试的值"
  "返回: t - 值为 nil；nil - 值不为 nil"
  "示例: (test:assert-nil nil) => t"
  "示例: (test:assert-nil '()) => t"
  "示例: (test:assert-nil 0) => nil"
  (null val))
