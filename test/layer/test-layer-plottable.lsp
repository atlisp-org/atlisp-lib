;;; test-layer-plottable.lsp - layer:plottable 测试
(defun test:layer-plottable ()
  (test:suite 'layer)
  (test:add-case 'layer 'plottable '((lambda () (vl-catch-all-apply 'layer:plottable (list)))) nil)
  (test:run-all))
(test:layer-plottable)
