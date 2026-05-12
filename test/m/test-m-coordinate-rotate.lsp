; test-m-coordinate-rotate.lsp - m:coordinate-rotate 函数测试
(load "src/fun/test-framework")
(load "src/m/coordinate-rotate")

(test:suite 'm-coordinate-rotate)

(test:add-case 'm-coordinate-rotate 'test-pi-2
  '((lambda () (m:coordinate-rotate '(10 0) 0.5 pi)))
  nil)

(test:add-case 'm-coordinate-rotate 'test-pi
  '((lambda () (m:coordinate-rotate '(10 0) pi)))
  nil)

(test:run-all)