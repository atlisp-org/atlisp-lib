;;; test-layer-freezelist.lsp - layer:freezelist 测试
(defun test:layer-freezelist ()
  (test:suite 'layer)
  (test:add-case 'layer 'freezelist '((lambda () (vl-catch-all-apply 'layer:freezelist (list)))) nil)
  (test:run-all))
(test:layer-freezelist)
