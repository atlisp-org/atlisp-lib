;;; test-line-get-lwpoints.lsp - line:get-lwpoints 测试
(defun test:line-get-lwpoints ()
  (test:suite 'line)
  (test:add-case 'line 'get-lwpoints '((lambda () (vl-catch-all-apply 'line:get-lwpoints (list nil)))) nil)
  (test:run-all))
(test:line-get-lwpoints)