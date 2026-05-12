;;; test-file-merge.lsp - file:merge 测试
(defun test:file-merge ()
  (test:suite 'file)
  (test:add-case 'file 'merge '((lambda () (vl-catch-all-apply 'file:merge (list)))) nil)
  (test:run-all))
(test:file-merge)
