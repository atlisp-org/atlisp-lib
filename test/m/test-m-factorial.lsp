; test-m-factorial.lsp - m:factorial 函数测试
(load "src/fun/test-framework")
(load "src/m/factorial")

(test:suite 'm-factorial)

(test:add-case 'm-factorial 'test-5
  '((lambda () (m:factorial 5)))
  120)

(test:add-case 'm-factorial 'test-0
  '((lambda () (m:factorial 0)))
  1)

(test:add-case 'm-factorial 'test-1
  '((lambda () (m:factorial 1)))
  1)

(test:add-case 'm-factorial 'test-10
  '((lambda () (m:factorial 10)))
  3628800)

(test:add-case 'm-factorial 'test-3
  '((lambda () (m:factorial 3)))
  6)

(test:run-all)