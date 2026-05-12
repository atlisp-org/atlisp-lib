; test-m-artanh.lsp - m:artanh 函数测试
(load "src/fun/test-framework")
(load "src/m/artanh")

(test:suite 'm-artanh)

(test:add-case 'm-artanh 'test-0
  '((lambda () (m:artanh 0.0)))
  0.0)

(test:add-case 'm-artanh 'test-0-5
  '((lambda () (m:artanh 0.5)))
  0.5493061443)

(test:add-case 'm-artanh 'test-negative
  '((lambda () (m:artanh -0.5)))
  -0.5493061443)

(test:run-all)