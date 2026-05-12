; test-m-dms.lsp - m:dms 函数测试
(load "src/fun/test-framework")
(load "src/m/dms")

(test:suite 'm-dms)

(test:add-case 'm-dms 'test-90
  '((lambda () (m:dms 90.0)))
  '(90 0 0))

(test:add-case 'm-dms 'test-45-30
  '((lambda () (m:dms 45.5)))
  '(45 30 0))

(test:add-case 'm-dms 'test-123-45-30
  '((lambda () (m:dms 123.75833)))
  '(123 45 30))

(test:add-case 'm-dms 'test-negative
  '((lambda () (m:dms -45.5)))
  '(-45 30 0))

(test:run-all)