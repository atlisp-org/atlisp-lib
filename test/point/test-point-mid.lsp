;;; test-point-mid.lsp - point:mid 测试
(defun test:point-mid ()
  (test:suite 'point)
  (test:add-case 'point 'mid '((lambda () (vl-catch-all-apply 'point:mid (list '(0 0) '(10 0)))) '(5 0))
  (test:add-case 'point 'mid '((lambda () (vl-catch-all-apply 'point:mid (list '(0 0 0) '(10 10 10)))) '(5 5 5))
  (test:run-all))
(test:point-mid)