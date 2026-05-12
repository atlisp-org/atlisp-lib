;;; test-ui-progress.lsp - ui:progress 测试
(defun test:ui-progress ()
  (test:suite 'ui)
  (test:add-case 'ui 'progress '((lambda () (vl-catch-all-apply 'ui:progress (list)))) nil)
  (test:run-all))
(test:ui-progress)
