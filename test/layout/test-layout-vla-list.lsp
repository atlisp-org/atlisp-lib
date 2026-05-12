;;; test-layout-vla-list.lsp - layout:vla-list 测试
(defun test:layout-vla-list ()
  (test:suite 'layout)
  (test:add-case 'layout 'vla-list '((lambda () (vl-catch-all-apply 'layout:vla-list nil))) nil)
  (test:run-all))
(test:layout-vla-list)