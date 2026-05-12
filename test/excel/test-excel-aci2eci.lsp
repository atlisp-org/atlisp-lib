;;; test-excel-aci2eci.lsp - excel:aci2eci 测试
(defun test:excel-aci2eci ()
  (test:suite 'excel)
  (test:add-case 'excel 'aci2eci '((lambda () (vl-catch-all-apply 'excel:aci2eci (list)))) nil)
  (test:run-all))
(test:excel-aci2eci)
