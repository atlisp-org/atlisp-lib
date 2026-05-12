;;; test-excel-delete-sheet.lsp - excel:delete-sheet 测试
(defun test:excel-delete-sheet ()
  (test:suite 'excel)
  (test:add-case 'excel 'delete-sheet '((lambda () (vl-catch-all-apply 'excel:delete-sheet (list)))) nil)
  (test:run-all))
(test:excel-delete-sheet)
