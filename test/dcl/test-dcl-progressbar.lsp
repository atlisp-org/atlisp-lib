;;; test-dcl-progressbar.lsp - dcl:progressbar 测试
(defun test:dcl-progressbar ()
  (test:suite 'dcl)
  (test:add-case 'dcl 'progressbar '((lambda () (vl-catch-all-apply 'dcl:progressbar (list)))) nil)
  (test:run-all))
(test:dcl-progressbar)
