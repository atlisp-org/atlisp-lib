;;; test-excel-save.lsp - excel:save 测试
(defun test:excel-save ()
  (test:suite 'excel)
  (test:add-case 'excel 'save '((lambda () (vl-catch-all-apply 'excel:save (list)))) nil)
  (test:run-all))
(test:excel-save)
