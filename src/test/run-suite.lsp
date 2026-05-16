(defun test:run-suite (suite-name / cases)
  "运行指定测试套件中的所有用例"
  "参数: suite-name - 套件名称（符号）"
  "返回: nil"
  "说明: 自动打印套件标题，逐个运行套件内的测试用例"
  "示例: (test:run-suite 'math)"
  (foreach s *test-suite*
    (if (eq (car s) suite-name)
      (progn
        (setq cases (cdr s))
        (princ (string:format "\n=== Running Suite: %s ===\n" (vl-symbol-name suite-name)))
        (mapcar '(lambda (c)
                   (test:run-case (car c) (cadr c) (caddr c)))
                cases))))
  nil)
