;;; test-std-timer-start.lsp - std:timer-start 测试
(defun test:std-timer-start ()
  (test:suite 'std)
  (test:add-case 'std 'timer-start '((lambda () (vl-catch-all-apply 'std:timer-start (list)))) nil)
  (test:run-all))
(test:std-timer-start)
