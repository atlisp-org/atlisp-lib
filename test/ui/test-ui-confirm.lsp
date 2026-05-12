;;; test-ui-confirm.lsp - ui:confirm 测试
(defun test:ui-confirm ()
  (test:suite 'ui)
  (test:add-case 'ui 'confirm '((lambda () (vl-catch-all-apply 'ui:confirm (list)))) nil)
  (test:run-all))
(test:ui-confirm)
