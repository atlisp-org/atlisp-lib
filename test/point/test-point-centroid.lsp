;;; test-point-centroid.lsp - point:centroid 测试
(defun test:point-centroid ()
  (test:suite 'point)
  (test:add-case 'point 'centroid '((lambda () (vl-catch-all-apply 'point:centroid (list '((0 0) (10 0) (10 10) (0 10))))) '(5 5))
  (test:add-case 'point 'centroid '((lambda () (vl-catch-all-apply 'point:centroid (list '((0 0 0) (10 0 0) (10 10 10) (0 10 10))))) '(5 5 5))
  (test:run-all))
(test:point-centroid)