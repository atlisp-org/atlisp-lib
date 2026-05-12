; test-m-coordinate-scale.lsp - m:coordinate-scale 函数测试
(load "src/fun/test-framework")
(load "src/m/coordinate-scale")

(test:suite 'm-coordinate-scale)

(test:add-case 'm-coordinate-scale 'test-2
  '((lambda () (m:coordinate-scale '(10 20) 2)))
  '(20 40))

(test:add-case 'm-coordinate-scale 'test-0-5
  '((lambda () (m:coordinate-scale '(10 20) 0.5)))
  '(5.0 10.0))

(test:add-case 'm-coordinate-scale 'test-negative
  '((lambda () (m:coordinate-scale '(10 20) -1)))
  '(-10 -20))

(test:run-all)