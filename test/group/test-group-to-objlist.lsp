;;; test-group-to-objlist.lsp - group:to-objlist 测试
(defun test:group-to-objlist ()
  (test:suite 'group)
  (test:add-case 'group 'to-objlist '((lambda () (vl-catch-all-apply 'group:to-objlist (list nil)))) nil)
  (test:run-all))
(test:group-to-objlist)