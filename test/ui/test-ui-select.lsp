;;; test-ui-select.lsp - ui:select 测试
(defun test:ui-select ()
  (test:suite 'ui)
  (test:add-case 'ui 'select '((lambda () (vl-catch-all-apply 'ui:select (list)))) nil)
  (test:run-all))
(test:ui-select)
