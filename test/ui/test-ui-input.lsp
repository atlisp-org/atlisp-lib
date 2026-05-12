;;; test-ui-input.lsp - ui:input 测试
(defun test:ui-input ()
  (test:suite 'ui)
  (test:add-case 'ui 'input '((lambda () (vl-catch-all-apply 'ui:input (list)))) nil)
  (test:run-all))
(test:ui-input)
