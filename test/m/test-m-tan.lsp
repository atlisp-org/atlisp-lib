; test-m-tan.lsp - m:tan 函数测试
(load "src/fun/test-framework")
(load "src/m/tan")

(test:suite 'm-tan)

(test:add-case 'm-tan 'test-0
  '((lambda () (m:tan 0.0)))
  0.0)

(test:add-case 'm-tan 'test-pi-4
  '((lambda () (m:tan 0.7853981634)))
  1.0)

(test:add-case 'm-tan 'test-pi-6
  '((lambda () (m:tan 0.5235987756)))
  0.5773502692)

(test:add-case 'm-tan 'test-negative
  '((lambda () (m:tan -0.7853981634)))
  -1.0)

(test:run-all)