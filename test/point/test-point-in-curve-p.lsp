;;; test-point-in-curve-p.lsp - point:in-curve-p 测试
(defun test:point:in-curve-p ()
  (test:suite 'point)
  (test:add-case 'point 'in-curve-p '((lambda () (vl-catch-all-apply 'point:in-curve-p (list '(5 5) nil))) nil)
  (test:run-all))
(test:point:in-curve-p)