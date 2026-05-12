;;; test-matrix-scale1.lsp - matrix:scale1 测试
(defun test:matrix-scale1 ()
  (test:suite 'matrix)
  (test:add-case 'matrix 'scale1 '((lambda () (vl-catch-all-apply 'matrix:scale1 (list)))) nil)
  (test:run-all))
(test:matrix-scale1)
