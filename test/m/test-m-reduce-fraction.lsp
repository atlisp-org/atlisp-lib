; test-m-reduce-fraction.lsp - m:reduce-fraction 函数测试
(load "src/fun/test-framework")
(load "src/m/reduce-fraction")

(test:suite 'm-reduce-fraction)

(test:add-case 'm-reduce-fraction 'test-4-8
  '((lambda () (m:reduce-fraction '(4 8))))
  '(1 2))

(test:add-case 'm-reduce-fraction 'test-6-9
  '((lambda () (m:reduce-fraction '(6 9))))
  '(2 3))

(test:add-case 'm-reduce-fraction 'test-10-20
  '((lambda () (m:reduce-fraction '(10 20))))
  '(1 2))

(test:add-case 'm-reduce-fraction 'test-3-9
  '((lambda () (m:reduce-fraction '(3 9))))
  '(1 3))

(test:run-all)