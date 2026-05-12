;;; test-group-make.lsp - group:make 测试
(defun test:group-make ()
  (test:suite 'group)
  (test:add-case 'group 'make '((lambda () (vl-catch-all-apply 'group:make (list nil "TestGroup")))) nil)
  (test:run-all))
(test:group-make)