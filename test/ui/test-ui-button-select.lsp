;;; test-ui-button-select.lsp - ui:button-select 测试
(defun test:ui-button-select ()
  (test:suite 'ui)
  (test:add-case 'ui 'button-select '((lambda () (vl-catch-all-apply 'ui:button-select (list)))) nil)
  (test:run-all))
(test:ui-button-select)
