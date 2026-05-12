;;; test-timer-end.lsp - timer:end 测试
(defun test:timer-end ()
  (test:suite 'timer)
  (test:add-case 'timer 'end '((lambda () (vl-catch-all-apply 'timer:end (list)))) nil)
  (test:run-all))
(test:timer-end)
