;;; test-layer-freezed-p.lsp - layer:freezed-p 测试
(defun test:layer-freezed-p ()
  (test:suite 'layer)
  (test:add-case 'layer 'freezed-p '((lambda () (vl-catch-all-apply 'layer:freezed-p (list)))) nil)
  (test:run-all))
(test:layer-freezed-p)
