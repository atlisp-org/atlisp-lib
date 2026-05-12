; test-m-length.lsp - m:length 函数测试
(load "src/fun/test-framework")
(load "src/m/length")

(test:suite 'm-length)

(test:add-case 'm-length 'test-0-5
  '((lambda () (m:length '(0 0) '(0 5)))
  5.0)

(test:add-case 'm-length 'test-3-4
  '((lambda () (m:length '(0 0) '(3 4)))
  5.0)

(test:add-case 'm-length 'test-negative
  '((lambda () (m:length '(-1 -1) '(2 3)))
  5.0)

(test:add-case 'm-length 'test-same-point
  '((lambda () (m:length '(1 1) '(1 1)))
  0.0)

(test:run-all)