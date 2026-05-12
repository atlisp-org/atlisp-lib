;;; test-layer-on.lsp - layer:on 测试
(defun test:layer-on ()
  (test:suite 'layer)
  (test:add-case 'layer 'on '((lambda () (vl-catch-all-apply 'layer:on (list)))) nil)
  (test:run-all))
(test:layer-on)
