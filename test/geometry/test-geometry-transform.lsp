;;; test-geometry-transform.lsp - geometry:transform 测试
(defun test:geometry-transform ()
  (test:suite 'geometry)
  (test:add-case 'geometry 'transform '((lambda () (vl-catch-all-apply 'geometry:transform (list)))) nil)
  (test:run-all))
(test:geometry-transform)
