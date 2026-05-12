;;; test-excel-quit-all.lsp - excel:quit-all 测试
(defun test:excel-quit-all ()
  (test:suite 'excel)
  (test:add-case 'excel 'quit-all '((lambda () (vl-catch-all-apply 'excel:quit-all (list)))) nil)
  (test:run-all))
(test:excel-quit-all)
