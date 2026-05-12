;;; test-reg-list-app.lsp - reg:list-app 测试
(defun test:reg-list-app ()
  (test:suite 'reg)
  (test:add-case 'reg 'list-app '((lambda () (vl-catch-all-apply 'reg:list-app nil))) nil)
  (test:run-all))
(test:reg-list-app)