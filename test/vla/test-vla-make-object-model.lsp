;;; test-vla-make-object-model.lsp - vla:make-object-model 测试
(defun test:vla-make-object-model ()
  (test:suite 'vla)
  (test:add-case 'vla 'make-object-model '((lambda () (vl-catch-all-apply 'vla:make-object-model (list)))) nil)
  (test:run-all))
(test:vla-make-object-model)
