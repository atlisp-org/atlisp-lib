; test-m-rand.lsp - m:rand 函数测试
(load "src/fun/test-framework")
(load "src/m/rand")

(test:suite 'm-rand)

(test:add-case 'm-rand 'test-call
  '((lambda () (m:rand)))
  nil)

(test:add-case 'm-rand 'test-call2
  '((lambda () (m:rand)))
  nil)

(test:add-case 'm-rand 'test-call3
  '((lambda () (m:rand)))
  nil)

(test:run-all)