; test-m-coordinate.lsp - m:coordinate 函数测试
(load "src/fun/test-framework")
(load "src/m/coordinate")

(test:suite 'm-coordinate)

(test:add-case 'm-coordinate 'test-add
  '((lambda () (m:coordinate '(0 0 0) '(10 20))))
  '(10 20 0))

(test:add-case 'm-coordinate 'test-offset
  '((lambda () (m:coordinate '(5 5 0) '(10 15))))
  '(15 20 5))

(test:run-all)