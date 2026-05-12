;;; test-vla-sel.lsp - vla:sel 测试
(defun test:vla-sel ()
  (test:suite 'vla)
  (test:add-case 'vla 'sel '((lambda () (vl-catch-all-apply 'vla:sel (list)))) nil)
  (test:run-all))
(test:vla-sel)
