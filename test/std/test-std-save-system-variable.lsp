;;; test-std-save-system-variable.lsp - std:save-system-variable 测试
(defun test:std-save-system-variable ()
  (test:suite 'std)
  (test:add-case 'std 'save-system-variable '((lambda () (vl-catch-all-apply 'std:save-system-variable (list)))) nil)
  (test:run-all))
(test:std-save-system-variable)
