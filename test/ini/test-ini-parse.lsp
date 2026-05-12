;;; test-ini-parse.lsp - ini:parse 测试
(defun test:ini-parse ()
  (test:suite 'ini)
  (test:add-case 'ini 'parse '((lambda () (vl-catch-all-apply 'ini:parse (list)))) nil)
  (test:run-all))
(test:ini-parse)
