;;; test-layer-lock.lsp - layer:lock 测试
(defun test:layer-lock ()
  (test:suite 'layer)
  (test:add-case 'layer 'lock '((lambda () (vl-catch-all-apply 'layer:lock (list)))) nil)
  (test:run-all))
(test:layer-lock)
