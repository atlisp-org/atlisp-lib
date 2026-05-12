;;; test-dcl-mtext.lsp - dcl:mtext 测试
(defun test:dcl-mtext ()
  (test:suite 'dcl)
  (test:add-case 'dcl 'mtext '((lambda () (vl-catch-all-apply 'dcl:mtext (list)))) nil)
  (test:run-all))
(test:dcl-mtext)
