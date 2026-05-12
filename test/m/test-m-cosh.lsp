; test-m-cosh.lsp - m:cosh 函数测试
(load "src/fun/test-framework")
(load "src/m/cosh")

(test:suite 'm-cosh)

(test:add-case 'm-cosh 'test-0
  '((lambda () (m:cosh 0)))
  1.0)

(test:add-case 'm-cosh 'test-1
  '((lambda () (m:cosh 1)))
  1.5430806348)

(test:add-case 'm-cosh 'test-negative
  '((lambda () (m:cosh -1)))
  1.5430806348)

(test:add-case 'm-cosh 'test-2
  '((lambda () (m:cosh 2)))
  3.7621956911)

(test:run-all)