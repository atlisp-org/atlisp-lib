;;; test-dcl-error.lsp - dcl:error 测试
(defun test:dcl-error ()
  (test:suite 'dcl)
  (test:add-case 'dcl 'error '((lambda () (vl-catch-all-apply 'dcl:error (list)))) nil)
  (test:run-all))
(test:dcl-error)
