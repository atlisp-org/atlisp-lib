;;; test-ui-getstring.lsp - ui:getstring 测试
(defun test:ui-getstring ()
  (test:suite 'ui)
  (test:add-case 'ui 'getstring '((lambda () (vl-catch-all-apply 'ui:getstring (list)))) nil)
  (test:run-all))
(test:ui-getstring)
