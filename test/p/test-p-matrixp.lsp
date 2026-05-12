; test-p-matrixp.lsp - p:matrixp 函数测试
(load "src/fun/test-framework")
(load "src/p/matrixp")

(test:suite 'p-matrixp)

(test:add-case 'p-matrixp 'test-nil
  '((lambda () (p:matrixp nil)))
  nil)

(test:add-case 'p-matrixp 'test-matrix
  '((lambda () (p:matrixp '((1 2 3) (4 5 6)))))
  t)

(test:add-case 'p-matrixp 'test-not-matrix
  '((lambda () (p:matrixp '((1 2) (3 4 5)))))
  nil)

(test:run-all)