;;; test-layer-delete.lsp - layer:delete 测试
(defun test:layer-delete ()
  (test:suite 'layer)
  (test:add-case 'layer 'delete '((lambda () (vl-catch-all-apply 'layer:delete (list)))) nil)
  (test:run-all))
(test:layer-delete)
