;;; test-layer-info.lsp - layer:info 测试
(defun test:layer-info ()
  (test:suite 'layer)
  (test:add-case 'layer 'info '((lambda () (vl-catch-all-apply 'layer:info (list)))) nil)
  (test:run-all))
(test:layer-info)
