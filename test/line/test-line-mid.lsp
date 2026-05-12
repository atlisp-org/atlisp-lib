;;; test-line-mid.lsp - line:mid 测试
(defun test:line-mid ()
  (test:suite 'line)
  (test:add-case 'line 'mid '((lambda () (vl-catch-all-apply 'line:mid (list nil)))) nil)
  (test:run-all))
(test:line-mid)