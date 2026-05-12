;;; test-ui-table-widths.lsp - ui:table-widths 测试
(defun test:ui-table-widths ()
  (test:suite 'ui)
  (test:add-case 'ui 'table-widths '((lambda () (vl-catch-all-apply 'ui:table-widths (list)))) nil)
  (test:run-all))
(test:ui-table-widths)
