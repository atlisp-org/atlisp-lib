; test-m-square.lsp - m:square 函数测试
(load "src/fun/test-framework")
(load "src/m/square")

(test:suite 'm-square)

(test:add-case 'm-square 'test-4
  '((lambda () (m:square 4)))
  16.0)

(test:add-case 'm-square 'test-0
  '((lambda () (m:square 0)))
  0.0)

(test:add-case 'm-square 'test-negative
  '((lambda () (m:square -3)))
  9.0)

(test:add-case 'm-square 'test-decimal
  '((lambda () (m:square 2.5)))
  6.25)

(test:run-all)