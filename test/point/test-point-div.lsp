;;; test-point-div.lsp - point:div 测试
(defun test:point-div ()
  (test:suite 'point)
  (test:add-case 'point 'div '((lambda () (vl-catch-all-apply 'point:div (list '(0 0) '(10 0) 5))) '(0 2))
  (test:run-all))
(test:point-div)