;;; test-excel-rename-sheet.lsp - excel:rename-sheet 测试
(defun test:excel-rename-sheet ()
  (test:suite 'excel)
  (test:add-case 'excel 'rename-sheet '((lambda () (vl-catch-all-apply 'excel:rename-sheet (list)))) nil)
  (test:run-all))
(test:excel-rename-sheet)
