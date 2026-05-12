;;; test-ui-dynquery.lsp - ui:dynquery 测试
(defun test:ui-dynquery ()
  (test:suite 'ui)
  (test:add-case 'ui 'dynquery '((lambda () (vl-catch-all-apply 'ui:dynquery (list)))) nil)
  (test:run-all))
(test:ui-dynquery)
