;;; test-vla-objectvariant.lsp - vla:objectvariant 测试
(defun test:vla-objectvariant ()
  (test:suite 'vla)
  (test:add-case 'vla 'objectvariant '((lambda () (vl-catch-all-apply 'vla:objectvariant (list)))) nil)
  (test:run-all))
(test:vla-objectvariant)
