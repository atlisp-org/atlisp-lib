;;; test-layout-make-viewport.lsp - layout:make-viewport 测试
(defun test:layout-make-viewport ()
  (test:suite 'layout)
  (test:add-case 'layout 'make-viewport '((lambda () (vl-catch-all-apply 'layout:make-viewport (list "Layout1" '(0 0) 100 50 0 '(0 0 0))))) nil)
  (test:run-all))
(test:layout-make-viewport)