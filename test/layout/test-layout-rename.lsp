;;; test-layout-rename.lsp - layout:rename 测试
(defun test:layout-rename ()
  (test:suite 'layout)
  (test:add-case 'layout 'rename '((lambda () (vl-catch-all-apply 'layout:rename (list "Layout1" "NewLayout")))) nil)
  (test:run-all))
(test:layout-rename)