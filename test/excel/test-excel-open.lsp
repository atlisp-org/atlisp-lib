;;; test-excel-open.lsp - excel:open 测试
(defun test:excel-open ()
  (test:suite 'excel)
  (test:add-case 'excel 'open '((lambda () (vl-catch-all-apply 'excel:open (list)))) nil)
  (test:run-all))
(test:excel-open)
