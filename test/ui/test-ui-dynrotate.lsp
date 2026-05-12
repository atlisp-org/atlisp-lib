;;; test-ui-dynrotate.lsp - ui:dynrotate 测试
(defun test:ui-dynrotate ()
  (test:suite 'ui)
  (test:add-case 'ui 'dynrotate '((lambda () (vl-catch-all-apply 'ui:dynrotate (list)))) nil)
  (test:run-all))
(test:ui-dynrotate)
