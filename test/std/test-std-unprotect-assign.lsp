;;; test-std-unprotect-assign.lsp - std:unprotect-assign 测试
(defun test:std-unprotect-assign ()
  (test:suite 'std)
  (test:add-case 'std 'unprotect-assign '((lambda () (vl-catch-all-apply 'std:unprotect-assign (list)))) nil)
  (test:run-all))
(test:std-unprotect-assign)
