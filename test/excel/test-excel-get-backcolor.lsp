;;; test-excel-get-backcolor.lsp - excel:get-backcolor 测试
(defun test:excel-get-backcolor ()
  (test:suite 'excel)
  (test:add-case 'excel 'get-backcolor '((lambda () (vl-catch-all-apply 'excel:get-backcolor (list)))) nil)
  (test:run-all))
(test:excel-get-backcolor)
