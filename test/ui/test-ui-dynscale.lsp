;;; test-ui-dynscale.lsp - ui:dynscale 测试
(defun test:ui-dynscale ()
  (test:suite 'ui)
  (test:add-case 'ui 'dynscale '((lambda () (vl-catch-all-apply 'ui:dynscale (list)))) nil)
  (test:run-all))
(test:ui-dynscale)
