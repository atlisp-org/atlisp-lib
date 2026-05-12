;;; test-ui-kword.lsp - ui:kword 测试
(defun test:ui-kword ()
  (test:suite 'ui)
  (test:add-case 'ui 'kword '((lambda () (vl-catch-all-apply 'ui:kword (list)))) nil)
  (test:run-all))
(test:ui-kword)
