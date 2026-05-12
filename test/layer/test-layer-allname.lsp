;;; test-layer-allname.lsp - layer:allname 测试
(defun test:layer-allname ()
  (test:suite 'layer)
  (test:add-case 'layer 'allname '((lambda () (vl-catch-all-apply 'layer:allname (list)))) nil)
  (test:run-all))
(test:layer-allname)
