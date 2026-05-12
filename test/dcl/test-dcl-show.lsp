;;; test-dcl-show.lsp - dcl:show 测试
(defun test:dcl-show ()
  (test:suite 'dcl)
  (test:add-case 'dcl 'show '((lambda () (vl-catch-all-apply 'dcl:show (list)))) nil)
  (test:run-all))
(test:dcl-show)
