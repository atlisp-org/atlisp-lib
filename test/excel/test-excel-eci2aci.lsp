;;; test-excel-eci2aci.lsp - excel:eci2aci 测试
(defun test:excel-eci2aci ()
  (test:suite 'excel)
  (test:add-case 'excel 'eci2aci '((lambda () (vl-catch-all-apply 'excel:eci2aci (list)))) nil)
  (test:run-all))
(test:excel-eci2aci)
