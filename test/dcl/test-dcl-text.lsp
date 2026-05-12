;;; test-dcl-text.lsp - dcl:text 测试
(defun test:dcl-text ()
  (test:suite 'dcl)
  (test:add-case 'dcl 'text '((lambda () (vl-catch-all-apply 'dcl:text (list)))) nil)
  (test:run-all))
(test:dcl-text)
