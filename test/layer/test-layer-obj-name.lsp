;;; test-layer-obj-name.lsp - layer:obj-name 测试
(defun test:layer-obj-name ()
  (test:suite 'layer)
  (test:add-case 'layer 'obj-name '((lambda () (vl-catch-all-apply 'layer:obj-name (list)))) nil)
  (test:run-all))
(test:layer-obj-name)
