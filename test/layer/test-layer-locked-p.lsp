;;; test-layer-locked-p.lsp - layer:locked-p 测试
(defun test:layer-locked-p ()
  (test:suite 'layer)
  (test:add-case 'layer 'locked-p '((lambda () (vl-catch-all-apply 'layer:locked-p (list)))) nil)
  (test:run-all))
(test:layer-locked-p)
