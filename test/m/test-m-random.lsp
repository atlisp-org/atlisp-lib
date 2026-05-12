; test-m-random.lsp - m:random 函数测试
(load "src/fun/test-framework")
(load "src/m/random")

(test:suite 'm-random)

(test:add-case 'm-random 'test-10
  '((lambda () (m:random 10)))
  nil)

(test:add-case 'm-random 'test-100
  '((lambda () (m:random 100)))
  nil)

(test:add-case 'm-random 'test-1
  '((lambda () (m:random 1)))
  nil)

(test:run-all)