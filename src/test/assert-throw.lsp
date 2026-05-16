(defun test:assert-throw (fn args expected-error)
  "断言函数执行时抛出异常"
  "参数: fn - 要调用的函数（符号）；args - 函数参数列表；expected-error - 期望的错误类型（暂未使用）"
  "返回: t - 抛出异常；nil - 未抛出异常"
  "说明: 使用 vl-catch-all-apply 安全调用，不会中断测试执行"
  "示例: (test:assert-throw '/ '(1 0) \"divide by zero\")"
  (vl-catch-all-error-p (vl-catch-all-apply fn args)))
