;;; test-debug-func-analyze.lsp - debug:func-analyze 测试
(defun test:debug-func-analyze ()
  (test:suite 'debug)
  (test:add-case 'debug 'func-analyze '((lambda () (vl-catch-all-apply 'func:calls (list "test.lsp")))) nil)
  (test:run-all))
(test:debug-func-analyze)