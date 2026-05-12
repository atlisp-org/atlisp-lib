; test-m-asin.lsp - m:asin 函数测试
(load "src/fun/test-framework")
(load "src/m/asin")

(test:suite 'm-asin)

(test:add-case 'm-asin 'test-0
  '((lambda () (m:asin 0.0)))
  0.0)

(test:add-case 'm-asin 'test-1
  '((lambda () (m:asin 1.0)))
  1.5707963268)

(test:add-case 'm-asin 'test-negative
  '((lambda () (m:asin -1.0)))
  -1.5707963268)

(test:add-case 'm-asin 'test-0-5
  '((lambda () (m:asin 0.5)))
  0.5235987756)

(test:run-all)