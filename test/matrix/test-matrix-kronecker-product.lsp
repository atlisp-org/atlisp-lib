;;; test-matrix-kronecker-product.lsp - matrix:kronecker-product 测试
(defun test:matrix-kronecker-product ()
  (test:suite 'matrix)
  (test:add-case 'matrix 'kronecker-product '((lambda () (vl-catch-all-apply 'matrix:kronecker-product (list)))) nil)
  (test:run-all))
(test:matrix-kronecker-product)
