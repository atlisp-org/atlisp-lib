;;; test-ini-get.lsp - ini:get 测试
(defun test:ini-get ()
  (test:suite 'ini)
  (test:add-case 'ini 'get '((lambda () (vl-catch-all-apply 'ini:get (list)))) nil)
  (test:run-all))
(test:ini-get)
