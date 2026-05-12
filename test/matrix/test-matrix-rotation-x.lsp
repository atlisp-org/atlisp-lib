;;; test-matrix-rotation-x.lsp - matrix:rotation-x 测试
(defun test:matrix-rotation-x ()
  (test:suite 'matrix)
  (test:add-case 'matrix 'rotation-x '((lambda () (vl-catch-all-apply 'matrix:rotation-x (list)))) nil)
  (test:run-all))
(test:matrix-rotation-x)
