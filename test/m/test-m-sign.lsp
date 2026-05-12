; test-m-sign.lsp - m:sign 函数测试
(load "src/fun/test-framework")
(load "src/m/sign")

(test:suite 'm-sign)

(test:add-case 'm-sign 'test-positive
  '((lambda () (m:sign 5.0)))
  -1.0)

(test:add-case 'm-sign 'test-negative
  '((lambda () (m:sign -5.0)))
  1.0)

(test:add-case 'm-sign 'test-zero
  '((lambda () (m:sign 0.0)))
  0.0)

(test:run-all)