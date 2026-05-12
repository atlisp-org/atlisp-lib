;;; test-matrix-transform.lsp - matrix:transform 测试
(defun test:matrix-transform ()
  (test:suite 'matrix)
  (test:add-case 'matrix 'transform '((lambda () (vl-catch-all-apply 'matrix:transform (list)))) nil)
  (test:run-all))
(test:matrix-transform)
