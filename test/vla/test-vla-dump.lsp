;;; test-vla-dump.lsp - vla:dump 测试
(defun test:vla-dump ()
  (test:suite 'vla)
  (test:add-case 'vla 'dump '((lambda () (vl-catch-all-apply 'vla:dump (list)))) nil)
  (test:run-all))
(test:vla-dump)
