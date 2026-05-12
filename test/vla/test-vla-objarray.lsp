;;; test-vla-objarray.lsp - vla:objarray 测试
(defun test:vla-objarray ()
  (test:suite 'vla)
  (test:add-case 'vla 'objarray '((lambda () (vl-catch-all-apply 'vla:objarray (list)))) nil)
  (test:run-all))
(test:vla-objarray)
