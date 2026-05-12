;;; test-timer-begin.lsp - timer:begin 测试
(defun test:timer-begin ()
  (test:suite 'timer)
  (test:add-case 'timer 'begin '((lambda () (vl-catch-all-apply 'timer:begin (list)))) nil)
  (test:run-all))
(test:timer-begin)
