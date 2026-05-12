;;; test-excel-sheets.lsp - excel:sheets 测试
(defun test:excel-sheets ()
  (test:suite 'excel)
  (test:add-case 'excel 'sheets '((lambda () (vl-catch-all-apply 'excel:sheets (list)))) nil)
  (test:run-all))
(test:excel-sheets)
