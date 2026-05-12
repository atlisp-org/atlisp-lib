;;; test-ui-dyndraw.lsp - ui:dyndraw 测试
(defun test:ui-dyndraw ()
  (test:suite 'ui)
  (test:add-case 'ui 'dyndraw '((lambda () (vl-catch-all-apply 'ui:dyndraw (list)))) nil)
  (test:run-all))
(test:ui-dyndraw)
