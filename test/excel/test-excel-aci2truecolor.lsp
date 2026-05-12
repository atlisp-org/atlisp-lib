;;; test-excel-aci2truecolor.lsp - excel:aci2truecolor 测试
(defun test:excel-aci2truecolor ()
  (test:suite 'excel)
  (test:add-case 'excel 'aci2truecolor '((lambda () (vl-catch-all-apply 'excel:aci2truecolor (list)))) nil)
  (test:run-all))
(test:excel-aci2truecolor)
