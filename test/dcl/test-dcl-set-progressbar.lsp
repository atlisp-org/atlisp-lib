;;; test-dcl-set-progressbar.lsp - dcl:set-progressbar 测试
(defun test:dcl-set-progressbar ()
  (test:suite 'dcl)
  (test:add-case 'dcl 'set-progressbar '((lambda () (vl-catch-all-apply 'dcl:set-progressbar (list)))) nil)
  (test:run-all))
(test:dcl-set-progressbar)
