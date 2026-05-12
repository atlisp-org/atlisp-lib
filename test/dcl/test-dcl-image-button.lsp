;;; test-dcl-image-button.lsp - dcl:image-button 测试
(defun test:dcl-image-button ()
  (test:suite 'dcl)
  (test:add-case 'dcl 'image-button '((lambda () (vl-catch-all-apply 'dcl:image-button (list)))) nil)
  (test:run-all))
(test:dcl-image-button)
