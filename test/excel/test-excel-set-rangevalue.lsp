;;; test-excel-set-rangevalue.lsp - excel:set-rangevalue 测试
(defun test:excel-set-rangevalue ()
  (test:suite 'excel)
  (test:add-case 'excel 'set-rangevalue '((lambda () (vl-catch-all-apply 'excel:set-rangevalue (list)))) nil)
  (test:run-all))
(test:excel-set-rangevalue)
