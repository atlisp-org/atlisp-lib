;;; test-layer-plottablelist.lsp - layer:plottablelist 测试
(defun test:layer-plottablelist ()
  (test:suite 'layer)
  (test:add-case 'layer 'plottablelist '((lambda () (vl-catch-all-apply 'layer:plottablelist (list)))) nil)
  (test:run-all))
(test:layer-plottablelist)
