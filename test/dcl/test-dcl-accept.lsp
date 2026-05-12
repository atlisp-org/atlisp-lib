;;; test-dcl-accept.lsp - dcl:accept 测试
(defun test:dcl-accept ()
  (test:suite 'dcl)
  (test:add-case 'dcl 'accept '((lambda () (vl-catch-all-apply 'dcl:accept (list)))) nil)
  (test:run-all))
(test:dcl-accept)
