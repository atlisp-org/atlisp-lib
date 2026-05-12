;;; test-ui-table.lsp - ui:table 测试
(defun test:ui-table ()
  (test:suite 'ui)
  (test:add-case 'ui 'table '((lambda () (vl-catch-all-apply 'ui:table (list)))) nil)
  (test:run-all))
(test:ui-table)
