;;; test-layer-ent.lsp - layer:ent 测试
(defun test:layer-ent ()
  (test:suite 'layer)
  (test:add-case 'layer 'ent '((lambda () (vl-catch-all-apply 'layer:ent (list)))) nil)
  (test:run-all))
(test:layer-ent)
