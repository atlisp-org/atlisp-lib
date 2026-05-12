;;; test-matrix-rotation.lsp - matrix:rotation 测试
(defun test:matrix-rotation ()
  (test:suite 'matrix)
  (test:add-case 'matrix 'rotation '((lambda () (vl-catch-all-apply 'matrix:rotation (list)))) nil)
  (test:run-all))
(test:matrix-rotation)
