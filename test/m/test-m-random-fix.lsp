; test-m-random-fix.lsp - m:random-fix 函数测试
(load "src/fun/test-framework")
(load "src/m/random-fix")

(test:suite 'm-random-fix)

(test:add-case 'm-random-fix 'test-1-10
  '((lambda () (m:random-fix 1 10)))
  nil)

(test:add-case 'm-random-fix 'test-0-100
  '((lambda () (m:random-fix 0 100)))
  nil)

(test:run-all)