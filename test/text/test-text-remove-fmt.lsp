;;; test-text-remove-fmt.lsp - text:remove-fmt 测试
(defun test:text-remove-fmt ()
  (test:suite 'text)
  (test:add-case 'text 'remove-fmt '((lambda () (vl-catch-all-apply 'text:remove-fmt (list "{test}"))) "test")
  (test:run-all))
(test:text-remove-fmt)