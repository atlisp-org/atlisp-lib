;;; test-layout-sort.lsp - layout:sort 测试
(defun test:layout-sort ()
  (test:suite 'layout)
  (test:add-case 'layout 'sort '((lambda () (vl-catch-all-apply 'layout:sort nil))) nil)
  (test:run-all))
(test:layout-sort)