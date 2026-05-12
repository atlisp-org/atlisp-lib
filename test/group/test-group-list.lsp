;;; test-group-list.lsp - group:list 测试
(defun test:group-list ()
  (test:suite 'group)
  (test:add-case 'group 'list '((lambda () (vl-catch-all-apply 'group:list nil))) nil)
  (test:run-all))
(test:group-list)