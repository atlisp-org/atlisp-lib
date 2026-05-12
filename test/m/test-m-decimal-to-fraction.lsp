; test-m-decimal-to-fraction.lsp - m:decimal-to-fraction 函数测试
(load "src/fun/test-framework")
(load "src/m/decimal-to-fraction")

(test:suite 'm-decimal-to-fraction)

(test:add-case 'm-decimal-to-fraction 'test-0-5
  '((lambda () (m:decimal-to-fraction 0.5)))
  '(1 2))

(test:add-case 'm-decimal-to-fraction 'test-0-25
  '((lambda () (m:decimal-to-fraction 0.25)))
  '(1 4))

(test:add-case 'm-decimal-to-fraction 'test-integer
  '((lambda () (m:decimal-to-fraction 5.0)))
  '(5 1))

(test:add-case 'm-decimal-to-fraction 'test-0
  '((lambda () (m:decimal-to-fraction 0)))
  '(0 1))

(test:run-all)