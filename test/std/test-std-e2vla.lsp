;;; test-std-e2vla.lsp - std:e2vla 测试
(defun test:std-e2vla ()
  (test:suite 'std)
  (test:add-case 'std 'e2vla '((lambda () (vl-catch-all-apply 'std:e2vla (list)))) nil)
  (test:run-all))
(test:std-e2vla)
