;;; test-excel-get-property.lsp - excel:get-property 测试
(defun test:excel-get-property ()
  (test:suite 'excel)
  (test:add-case 'excel 'get-property '((lambda () (vl-catch-all-apply 'excel:get-property (list)))) nil)
  (test:run-all))
(test:excel-get-property)
