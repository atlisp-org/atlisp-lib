;;; test-matrix-hadamard-product.lsp - matrix:hadamard-product 测试
(defun test:matrix-hadamard-product ()
  (test:suite 'matrix)
  (test:add-case 'matrix 'hadamard-product '((lambda () (vl-catch-all-apply 'matrix:hadamard-product (list)))) nil)
  (test:run-all))
(test:matrix-hadamard-product)
