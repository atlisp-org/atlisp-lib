;;; test-layer-make.lsp - layer:make 测试
(defun test:layer-make ()
  (test:suite 'layer)
  (test:add-case 'layer 'make '((lambda () (vl-catch-all-apply 'layer:make (list)))) nil)
  (test:run-all))
(test:layer-make)
