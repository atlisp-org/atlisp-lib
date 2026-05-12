;;; test-std-timer-end.lsp - std:timer-end 测试
(defun test:std-timer-end ()
  (test:suite 'std)
  (test:add-case 'std 'timer-end '((lambda () (vl-catch-all-apply 'std:timer-end (list)))) nil)
  (test:run-all))
(test:std-timer-end)
