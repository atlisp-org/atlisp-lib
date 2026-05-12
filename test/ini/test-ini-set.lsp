;;; test-ini-set.lsp - ini:set 测试
(defun test:ini-set ()
  (test:suite 'ini)
  (test:add-case 'ini 'set '((lambda () (vl-catch-all-apply 'ini:set (list)))) nil)
  (test:run-all))
(test:ini-set)
