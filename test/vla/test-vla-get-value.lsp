;;; test-vla-get-value.lsp - vla:get-value 测试
(defun test:vla-get-value ()
  (test:suite 'vla)
  (test:add-case 'vla 'get-value '((lambda () (vl-catch-all-apply 'vla:get-value (list)))) nil)
  (test:run-all))
(test:vla-get-value)
