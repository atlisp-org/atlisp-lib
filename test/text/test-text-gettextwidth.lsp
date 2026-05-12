;;; test-text-gettextwidth.lsp - text:gettextwidth 测试
(defun test:text-gettextwidth ()
  (test:suite 'text)
  (test:add-case 'text 'gettextwidth '((lambda () (vl-catch-all-apply 'text:getwidthtext (list "test" nil)))) nil)
  (test:run-all))
(test:text-gettextwidth)