;;; test-vitalgg-helloworld.lsp - vitalgg:helloworld 测试
(defun test:vitalgg-helloworld ()
  (test:suite 'vitalgg)
  (test:add-case 'vitalgg 'helloworld '((lambda () (vl-catch-all-apply 'vitalgg:helloworld nil))) nil)
  (test:run-all))
(test:vitalgg-helloworld)