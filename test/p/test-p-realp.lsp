; test-p-realp.lsp - p:realp 函数测试
(load "src/fun/test-framework")
(load "src/p/realp")

(test:suite 'p-realp)

(test:add-case 'p-realp 'test-nil
  '((lambda () (p:realp nil)))
  nil)

(test:add-case 'p-realp 'test-real
  '((lambda () (p:realp 1.5)))
  t)

(test:add-case 'p-realp 'test-int
  '((lambda () (p:realp 123)))
  nil)

(test:run-all)