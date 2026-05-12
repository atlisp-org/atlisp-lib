;;; test-layer-layers.lsp - layer:layers 测试
(defun test:layer-layers ()
  (test:suite 'layer)
  (test:add-case 'layer 'layers '((lambda () (vl-catch-all-apply 'layer:layers (list)))) nil)
  (test:run-all))
(test:layer-layers)
