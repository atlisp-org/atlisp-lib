;;; test-std-catchapply.lsp - std:catchapply 测试
(defun test:std-catchapply ()
  (test:suite 'std)
  (test:add-case 'std 'catchapply '((lambda () (vl-catch-all-apply 'std:catchapply (list)))) nil)
  (test:run-all))
(test:std-catchapply)
