(defun test:add-case (suite-name test-name test-fn expected)
  "添加测试用例到指定套件"
  "参数: suite-name - 套件名称（符号）；test-name - 测试用例名称（符号）；test-fn - 测试函数，格式为 '((lambda () ...)) 或 '(lambda () ...)；expected - 期望的返回值"
  "返回: nil"
  "示例: (test:add-case 'math 'add '((lambda () (+ 1 2))) 3)"
  "示例: (test:add-case 'math 'gcd '((lambda () (m:gcd 12 8))) 4)"
  (setq *test-suite*
        (mapcar '(lambda (s)
                   (if (eq (car s) suite-name)
                       (append s (list (list test-name test-fn expected)))
                     s))
               *test-suite*))
  nil)
