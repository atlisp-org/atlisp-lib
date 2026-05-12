;;; test-std-vla2e.lsp - std:vla2e 测试
(defun test:std-vla2e ()
  (test:suite 'std)
  (test:add-case 'std 'vla2e '((lambda () (vl-catch-all-apply 'std:vla2e (list)))) nil)
  (test:run-all))
(test:std-vla2e)
