; test-m-arsinh.lsp - m:arsinh 函数测试
(load "src/fun/test-framework")
(load "src/m/arsinh")

(test:suite 'm-arsinh)

(test:add-case 'm-arsinh 'test-0
  '((lambda () (m:arsinh 0)))
  0.0)

(test:add-case 'm-arsinh 'test-1
  '((lambda () (m:arsinh 1.0)))
  0.881373587)

(test:add-case 'm-arsinh 'test-negative
  '((lambda () (m:arsinh -1.0)))
  -0.881373587)

(test:add-case 'm-arsinh 'test-2
  '((lambda () (m:arsinh 2.0)))
  1.1462156789)

(test:run-all)