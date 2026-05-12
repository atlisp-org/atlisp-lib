;;; test-ini-save.lsp - ini:save 测试
(defun test:ini-save ()
  (test:suite 'ini)
  (test:add-case 'ini 'save '((lambda () (vl-catch-all-apply 'ini:save (list)))) nil)
  (test:run-all))
(test:ini-save)
