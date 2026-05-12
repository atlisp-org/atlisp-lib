;;; test-matrix-transformation.lsp - matrix:transformation 测试
(defun test:matrix-transformation ()
  (test:suite 'matrix)
  (test:add-case 'matrix 'transformation '((lambda () (vl-catch-all-apply 'matrix:transformation (list)))) nil)
  (test:run-all))
(test:matrix-transformation)
