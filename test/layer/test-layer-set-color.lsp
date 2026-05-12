;;; test-layer-set-color.lsp - layer:set-color 测试
(defun test:layer-set-color ()
  (test:suite 'layer)
  (test:add-case 'layer 'set-color '((lambda () (vl-catch-all-apply 'layer:set-color (list)))) nil)
  (test:run-all))
(test:layer-set-color)
