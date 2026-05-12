;;; test-layer-plotable.lsp - layer:plotable 测试
(defun test:layer-plotable ()
  (test:suite 'layer)
  (test:add-case 'layer 'plotable '((lambda () (vl-catch-all-apply 'layer:plotable (list)))) nil)
  (test:run-all))
(test:layer-plotable)
