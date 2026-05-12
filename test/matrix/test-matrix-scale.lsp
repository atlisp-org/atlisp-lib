;;; test-matrix-scale.lsp - matrix:scale 测试
(defun test:matrix-scale ()
  (test:suite 'matrix)
  (test:add-case 'matrix 'scale '((lambda () (vl-catch-all-apply 'matrix:scale (list)))) nil)
  (test:run-all))
(test:matrix-scale)
