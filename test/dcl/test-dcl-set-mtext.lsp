;;; test-dcl-set-mtext.lsp - dcl:set-mtext 测试
(defun test:dcl-set-mtext ()
  (test:suite 'dcl)
  (test:add-case 'dcl 'set-mtext '((lambda () (vl-catch-all-apply 'dcl:set-mtext (list)))) nil)
  (test:run-all))
(test:dcl-set-mtext)
