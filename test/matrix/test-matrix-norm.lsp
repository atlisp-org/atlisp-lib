;;; test-matrix-norm.lsp - matrix:norm 测试
(defun test:matrix-norm ()
  (test:suite 'matrix)
  (test:add-case 'matrix 'norm '((lambda () (vl-catch-all-apply 'matrix:norm (list)))) nil)
  (test:run-all))
(test:matrix-norm)
