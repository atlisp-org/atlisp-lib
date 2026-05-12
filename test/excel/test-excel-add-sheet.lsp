;;; test-excel-add-sheet.lsp - excel:add-sheet 测试
(defun test:excel-add-sheet ()
  (test:suite 'excel)
  (test:add-case 'excel 'add-sheet '((lambda () (vl-catch-all-apply 'excel:add-sheet (list)))) nil)
  (test:run-all))
(test:excel-add-sheet)
