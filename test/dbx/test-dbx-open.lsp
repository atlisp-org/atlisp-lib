;;; test-dbx-open.lsp - dbx:open 测试
(defun test:dbx-open ()
  (test:suite 'dbx)
  (test:add-case 'dbx 'open '((lambda () (vl-catch-all-apply 'dbx:open (list "test.dwg")))) nil)
  (test:run-all))
(test:dbx-open)