;;; test-matrix-rotation-z.lsp - matrix:rotation-z 测试
(defun test:matrix-rotation-z ()
  (test:suite 'matrix)
  (test:add-case 'matrix 'rotation-z '((lambda () (vl-catch-all-apply 'matrix:rotation-z (list)))) nil)
  (test:run-all))
(test:matrix-rotation-z)
