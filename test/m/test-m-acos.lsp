; test-m-acos.lsp - m:acos 函数测试
(load "src/fun/test-framework")
(load "src/m/acos")

(test:suite 'm-acos)

(test:add-case 'm-acos 'test-1
  '((lambda () (m:acos 1.0)))
  0.0)

(test:add-case 'm-acos 'test-0
  '((lambda () (m:acos 0.0)))
  1.5707963268)

(test:add-case 'm-acos 'test-negative
  '((lambda () (m:acos -1.0)))
  3.1415926536)

(test:add-case 'm-acos 'test-0-5
  '((lambda () (m:acos 0.5)))
  1.0471975512)

(test:run-all)