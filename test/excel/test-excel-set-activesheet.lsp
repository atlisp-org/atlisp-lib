;;; test-excel-set-activesheet.lsp - excel:set-activesheet 测试
(defun test:excel-set-activesheet ()
  (test:suite 'excel)
  (test:add-case 'excel 'set-activesheet '((lambda () (vl-catch-all-apply 'excel:set-activesheet (list)))) nil)
  (test:run-all))
(test:excel-set-activesheet)
