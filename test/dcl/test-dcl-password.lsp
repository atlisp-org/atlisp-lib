;;; test-dcl-password.lsp - dcl:password 测试
(defun test:dcl-password ()
  (test:suite 'dcl)
  (test:add-case 'dcl 'password '((lambda () (vl-catch-all-apply 'dcl:password (list)))) nil)
  (test:run-all))
(test:dcl-password)
