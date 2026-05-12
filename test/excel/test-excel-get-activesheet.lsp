;;; test-excel-get-activesheet.lsp - excel:get-activesheet 测试
(defun test:excel-get-activesheet ()
  (test:suite 'excel)
  (test:add-case 'excel 'get-activesheet '((lambda () (vl-catch-all-apply 'excel:get-activesheet (list)))) nil)
  (test:run-all))
(test:excel-get-activesheet)
