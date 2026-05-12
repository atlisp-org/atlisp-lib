;;; test-layer-layerofflist.lsp - layer:layerofflist 测试
(defun test:layer-layerofflist ()
  (test:suite 'layer)
  (test:add-case 'layer 'layerofflist '((lambda () (vl-catch-all-apply 'layer:layerofflist (list)))) nil)
  (test:run-all))
(test:layer-layerofflist)
