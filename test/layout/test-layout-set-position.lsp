;;; test-layout-set-position.lsp - layout:set-position 测试
(defun test:layout-set-position ()
  (test:suite 'layout)
  (test:add-case 'layout 'set-position '((lambda () (vl-catch-all-apply 'layout:set-position (list "Layout1" 1)))) nil)
  (test:run-all))
(test:layout-set-position)