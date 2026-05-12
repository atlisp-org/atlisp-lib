;;; test-matrix-rotation-y.lsp - matrix:rotation-y 测试
(defun test:matrix-rotation-y ()
  (test:suite 'matrix)
  (test:add-case 'matrix 'rotation-y '((lambda () (vl-catch-all-apply 'matrix:rotation-y (list)))) nil)
  (test:run-all))
(test:matrix-rotation-y)
