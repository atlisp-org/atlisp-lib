;;; test-group-to-entlist.lsp - group:to-entlist 测试
(defun test:group-to-entlist ()
  (test:suite 'group)
  (test:add-case 'group 'to-entlist '((lambda () (vl-catch-all-apply 'group:to-entlist (list nil)))) nil)
  (test:run-all))
(test:group-to-entlist)