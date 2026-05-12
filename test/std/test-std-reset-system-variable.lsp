;;; test-std-reset-system-variable.lsp - std:reset-system-variable 测试
(defun test:std-reset-system-variable ()
  (test:suite 'std)
  (test:add-case 'std 'reset-system-variable '((lambda () (vl-catch-all-apply 'std:reset-system-variable (list)))) nil)
  (test:run-all))
(test:std-reset-system-variable)
