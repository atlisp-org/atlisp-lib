;;; test-g-foot-point.lsp - g:foot-point 测试
(defun test:g-foot-point ()
  (test:suite 'g)
  (test:add-case 'g 'foot-point '((lambda () (vl-catch-all-apply 'g:foot-point (list '( (0 0) (10 0) ) '(5 5)))) nil)
  (test:run-all))
(test:g-foot-point)