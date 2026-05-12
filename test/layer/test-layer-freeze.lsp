;;; test-layer-freeze.lsp - layer:freeze 测试
(defun test:layer-freeze ()
  (test:suite 'layer)
  (test:add-case 'layer 'freeze '((lambda () (vl-catch-all-apply 'layer:freeze (list)))) nil)
  (test:run-all))
(test:layer-freeze)
