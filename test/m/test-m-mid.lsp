; test-m-mid.lsp - m:mid 函数测试
(load "src/fun/test-framework")
(load "src/m/mid")

(test:suite 'm-mid)

(test:add-case 'm-mid 'test-0-10
  '((lambda () (m:mid '(0 0) '(10 10))))
  '(5.0 5.0))

(test:add-case 'm-mid 'test-0-4
  '((lambda () (m:mid '(0 0) '(4 8))))
  '(2.0 4.0))

(test:add-case 'm-mid 'test-negative
  '((lambda () (m:mid '(-2 -2) '(2 2))))
  '(0.0 0.0))

(test:run-all)