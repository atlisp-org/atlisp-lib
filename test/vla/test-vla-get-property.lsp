;;; test-vla-get-property.lsp - vla:get-property 测试
(defun test:vla-get-property ()
  (test:suite 'vla)
  (test:add-case 'vla 'get-property '((lambda () (vl-catch-all-apply 'vla:get-property (list)))) nil)
  (test:run-all))
(test:vla-get-property)
