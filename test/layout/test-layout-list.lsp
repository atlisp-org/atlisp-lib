;;; test-layout-list.lsp - layout:list 测试
(defun test:layout-list ()
  (test:suite 'layout)
  (test:add-case 'layout 'list '((lambda () (vl-catch-all-apply 'layout:list nil))) nil)
  (test:run-all))
(test:layout-list)