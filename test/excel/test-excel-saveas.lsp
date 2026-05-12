;;; test-excel-saveas.lsp - excel:saveas 测试
(defun test:excel-saveas ()
  (test:suite 'excel)
  (test:add-case 'excel 'saveas '((lambda () (vl-catch-all-apply 'excel:saveas (list)))) nil)
  (test:run-all))
(test:excel-saveas)
