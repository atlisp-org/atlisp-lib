(defun test:run-case (test-name test-fn expected / result pass fn)
  "运行单个测试用例并输出结果"
  "参数: test-name - 测试用例名称（符号）；test-fn - 测试函数，格式为 '((lambda () ...)) 或 '(lambda () ...)；expected - 期望的返回值"
  "返回: t - 测试通过；nil - 测试失败"
  "说明: 自动处理两种 lambda 格式，使用 vl-catch-all-apply 安全执行"
  "示例: (test:run-case 'add '((lambda () (+ 1 2))) 3)"
  "示例: (test:run-case 'bad-test '((lambda () (/ 1 0))) nil)"
  (if (or (null test-name) (null test-fn))
      (progn
        (princ (string:format "[ERROR] Invalid test parameters: name=%s fn=%s expected=%s\n"
                              (vl-symbol-name test-name) test-fn expected))
        (setq *test-fail-count* (1+ *test-fail-count*))
        nil)
    (progn
      (setq fn (if (and (listp test-fn) (listp (car test-fn)))
                   (car test-fn)
                 test-fn))
      (setq result (vl-catch-all-apply fn (list)))
      (setq pass (if (vl-catch-all-error-p result)
                     nil
                   (test:assert-equal expected result 1e-6)))
      (if pass
          (progn (setq *test-pass-count* (1+ *test-pass-count*)) t)
        (progn (setq *test-fail-count* (1+ *test-fail-count*)) nil))
      (setq *test-results* (cons (list test-name pass result expected) *test-results*))
      (if pass
          (princ (string:format "[PASS] %s\n" (if test-name (vl-symbol-name test-name) "unknown")))
        (princ (string:format "[FAIL] %s - Expected: %s, Got: %s\n" (if test-name (vl-symbol-name test-name) "unknown") expected result)))
      pass)))
