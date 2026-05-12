;;; test-g-dot-product.lsp - g:dot-product 测试
(defun test:g-dot-product ()
  (test:suite 'g)
  (test:add-case 'g 'dot-product '((lambda () (vl-catch-all-apply 'g:dot-product (list '(1 0 0) '(1 0 0)))) 1.0)
  (test:add-case 'g 'dot-product '((lambda () (vl-catch-all-apply 'g:dot-product (list '(1 0 0) '(0 1 0)))) 0.0)
  (test:add-case 'g 'dot-product '((lambda () (vl-catch-all-apply 'g:dot-product (list '(1 2 3) '(4 5 6)))) 32.0)
  (test:run-all))
(test:g-dot-product)