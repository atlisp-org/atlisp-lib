;;; test-dbx-release.lsp - dbx:release 测试
(defun test:dbx-release ()
  (test:suite 'dbx)
  (test:add-case 'dbx 'release '((lambda () (vl-catch-all-apply 'dbx:release nil))) nil)
  (test:run-all))
(test:dbx-release)