;;; test-ui-select-multi.lsp - ui:select-multi 测试
(defun test:ui-select-multi ()
  (test:suite 'ui)
  (test:add-case 'ui 'select-multi '((lambda () (vl-catch-all-apply 'ui:select-multi (list)))) nil)
  (test:run-all))
(test:ui-select-multi)
