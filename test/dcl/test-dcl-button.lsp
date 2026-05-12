;;; test-dcl-button.lsp - dcl:button 测试
(defun test:dcl-button ()
  (test:suite 'dcl)
  (test:add-case 'dcl 'button '((lambda () (vl-catch-all-apply 'dcl:button (list)))) nil)
  (test:run-all))
(test:dcl-button)
