;;; test-excel-set-backcolor.lsp - excel:set-backcolor 测试
(defun test:excel-set-backcolor ()
  (test:suite 'excel)
  (test:add-case 'excel 'set-backcolor '((lambda () (vl-catch-all-apply 'excel:set-backcolor (list)))) nil)
  (test:run-all))
(test:excel-set-backcolor)
