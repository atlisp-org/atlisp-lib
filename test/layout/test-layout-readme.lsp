;;; test-layout-readme.lsp - layout:readme 测试
(defun test:layout-readme ()
  (test:suite 'layout)
  (test:add-case 'layout 'readme '((lambda () (vl-catch-all-apply 'layout:readme nil))) nil)
  (test:run-all))
(test:layout-readme)