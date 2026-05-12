;;; test-excel-new.lsp - excel:new 测试
(defun test:excel-new ()
  (test:suite 'excel)
  (test:add-case 'excel 'new '((lambda () (vl-catch-all-apply 'excel:new (list)))) nil)
  (test:run-all))
(test:excel-new)
