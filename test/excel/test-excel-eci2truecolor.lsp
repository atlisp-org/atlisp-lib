;;; test-excel-eci2truecolor.lsp - excel:eci2truecolor 测试
(defun test:excel-eci2truecolor ()
  (test:suite 'excel)
  (test:add-case 'excel 'eci2truecolor '((lambda () (vl-catch-all-apply 'excel:eci2truecolor (list)))) nil)
  (test:run-all))
(test:excel-eci2truecolor)
