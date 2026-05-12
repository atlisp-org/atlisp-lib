;;; test-dcl-paging.lsp - dcl:paging 测试
(defun test:dcl-paging ()
  (test:suite 'dcl)
  (test:add-case 'dcl 'paging '((lambda () (vl-catch-all-apply 'dcl:paging (list)))) nil)
  (test:run-all))
(test:dcl-paging)
