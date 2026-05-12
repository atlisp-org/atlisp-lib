;;; test-point-in-box.lsp - point:in-box 测试
(defun test:point-in-box ()
  (test:suite 'point)
  (test:add-case 'point 'in-box '((lambda () (vl-catch-all-apply 'point:in-box (list '(5 5) '(0 0) '(10 10)))) t)
  (test:add-case 'point 'in-box '((lambda () (vl-catch-all-apply 'point:in-box (list '(15 5) '(0 0) '(10 10)))) nil)
  (test:run-all))
(test:point-in-box)