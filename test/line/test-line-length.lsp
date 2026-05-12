;;; test-line-length.lsp - line:length 测试
(defun test:line-length ()
  (test:suite 'line)
  (test:add-case 'line 'length '((lambda () (vl-catch-all-apply 'line:length (list nil)))) nil)
  (test:run-all))
(test:line-length)