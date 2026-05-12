;;; test-vla-put-property.lsp - vla:put-property 测试
(defun test:vla-put-property ()
  (test:suite 'vla)
  (test:add-case 'vla 'put-property '((lambda () (vl-catch-all-apply 'vla:put-property (list)))) nil)
  (test:run-all))
(test:vla-put-property)
