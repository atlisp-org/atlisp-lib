;;; test-ui-confirm1.lsp - ui:confirm1 测试
(defun test:ui-confirm1 ()
  (test:suite 'ui)
  (test:add-case 'ui 'confirm1 '((lambda () (vl-catch-all-apply 'ui:confirm1 (list)))) nil)
  (test:run-all))
(test:ui-confirm1)
