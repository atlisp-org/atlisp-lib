;;; test-excel-utils-getvalue.lsp - excel:utils-getvalue 测试
(defun test:excel-utils-getvalue ()
  (test:suite 'excel)
  (test:add-case 'excel 'utils-getvalue '((lambda () (vl-catch-all-apply 'excel:utils-getvalue (list)))) nil)
  (test:run-all))
(test:excel-utils-getvalue)
