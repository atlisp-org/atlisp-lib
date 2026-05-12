;;; test-layer-activelayer.lsp - layer:activelayer 测试
(defun test:layer-activelayer ()
  (test:suite 'layer)
  (test:add-case 'layer 'activelayer '((lambda () (vl-catch-all-apply 'layer:activelayer (list)))) nil)
  (test:run-all))
(test:layer-activelayer)
