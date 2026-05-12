;;; test-ui-getdist.lsp - ui:getdist 测试
(defun test:ui-getdist ()
  (test:suite 'ui)
  (test:add-case 'ui 'getdist '((lambda () (vl-catch-all-apply 'ui:getdist (list)))) nil)
  (test:run-all))
(test:ui-getdist)
