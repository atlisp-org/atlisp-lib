;;; test-ui-progress1.lsp - ui:progress1 测试
(defun test:ui-progress1 ()
  (test:suite 'ui)
  (test:add-case 'ui 'progress1 '((lambda () (vl-catch-all-apply 'ui:progress1 (list)))) nil)
  (test:run-all))
(test:ui-progress1)
