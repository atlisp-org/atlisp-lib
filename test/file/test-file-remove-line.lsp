;;; test-file-remove-line.lsp - file:remove-line 测试
(defun test:file-remove-line ()
  (test:suite 'file)
  (test:add-case 'file 'remove-line '((lambda () (vl-catch-all-apply 'file:remove-line (list)))) nil)
  (test:run-all))
(test:file-remove-line)
