;;; test-excel-quit.lsp - excel:quit 测试
(defun test:excel-quit ()
  (test:suite 'excel)
  (test:add-case 'excel 'quit '((lambda () (vl-catch-all-apply 'excel:quit (list)))) nil)
  (test:run-all))
(test:excel-quit)
