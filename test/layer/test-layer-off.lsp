;;; test-layer-off.lsp - layer:off 测试
(defun test:layer-off ()
  (test:suite 'layer)
  (test:add-case 'layer 'off '((lambda () (vl-catch-all-apply 'layer:off (list)))) nil)
  (test:run-all))
(test:layer-off)
