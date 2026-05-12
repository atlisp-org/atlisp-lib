; test-p-consp.lsp - p:consp 函数测试
(load "src/fun/test-framework")
(load "src/p/consp")

(test:suite 'p-consp)

(test:add-case 'p-consp 'test-nil
  '((lambda () (p:consp nil)))
  nil)

(test:add-case 'p-consp 'test-list
  '((lambda () (p:consp '(1 2 3))))
  t)

(test:add-case 'p-consp 'test-int
  '((lambda () (p:consp 123)))
  nil)

(test:run-all)