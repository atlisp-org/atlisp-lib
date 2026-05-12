; test-m-linear-interpolation.lsp - m:linear-interpolation 函数测试
(load "src/fun/test-framework")
(load "src/m/linear-interpolation")

(test:suite 'm-linear-interpolation)

(test:add-case 'm-linear-interpolation 'test-mid
  '((lambda () (m:linear-interpolation 3.5 3 4 5 6)))
  5.5)

(test:add-case 'm-linear-interpolation 'test-x1
  '((lambda () (m:linear-interpolation 3 3 4 5 6)))
  5.0)

(test:add-case 'm-linear-interpolation 'test-x2
  '((lambda () (m:linear-interpolation 4 3 4 5 6)))
  6.0)

(test:run-all)