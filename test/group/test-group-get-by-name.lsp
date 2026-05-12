;;; test-group-get-by-name.lsp - group:get-by-name 测试
(defun test:group-get-by-name ()
  (test:suite 'group)
  (test:add-case 'group 'get-by-name '((lambda () (vl-catch-all-apply 'group:get-by-name (list "TestGroup")))) nil)
  (test:run-all))
(test:group-get-by-name)