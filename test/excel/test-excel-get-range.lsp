;;; test-excel-get-range.lsp - excel:get-range 测试
(defun test:excel-get-range ()
  (test:suite 'excel)
  (test:add-case 'excel 'get-range '((lambda () (vl-catch-all-apply 'excel:get-range (list)))) nil)
  (test:run-all))
(test:excel-get-range)
