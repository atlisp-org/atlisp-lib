;;; test-dbx-interface.lsp - dbx:interface 测试
(defun test:dbx-interface ()
  (test:suite 'dbx)
  (test:add-case 'dbx 'interface '((lambda () (vl-catch-all-apply 'dbx:interface nil))) nil)
  (test:run-all))
(test:dbx-interface)