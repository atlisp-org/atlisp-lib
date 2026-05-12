;;; test-layer-lockedlist.lsp - layer:lockedlist 测试
(defun test:layer-lockedlist ()
  (test:suite 'layer)
  (test:add-case 'layer 'lockedlist '((lambda () (vl-catch-all-apply 'layer:lockedlist (list)))) nil)
  (test:run-all))
(test:layer-lockedlist)
