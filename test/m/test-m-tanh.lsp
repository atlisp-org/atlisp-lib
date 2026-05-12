; test-m-tanh.lsp - m:tanh 函数测试
(load "src/fun/test-framework")
(load "src/m/tanh")

(test:suite 'm-tanh)

(test:add-case 'm-tanh 'test-0
  '((lambda () (m:tanh 0)))
  0.0)

(test:add-case 'm-tanh 'test-1
  '((lambda () (m:tanh 1)))
  0.761594156)

(test:add-case 'm-tanh 'test-negative
  '((lambda () (m:tanh -1)))
  -0.761594156)

(test:add-case 'm-tanh 'test-large
  '((lambda () (m:tanh 10)))
  0.999999455)

(test:run-all)