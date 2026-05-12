;;; test-excel-get-rangevalue.lsp - excel:get-rangevalue 测试
(defun test:excel-get-rangevalue ()
  (test:suite 'excel)
  (test:add-case 'excel 'get-rangevalue '((lambda () (vl-catch-all-apply 'excel:get-rangevalue (list)))) nil)
  (test:run-all))
(test:excel-get-rangevalue)
