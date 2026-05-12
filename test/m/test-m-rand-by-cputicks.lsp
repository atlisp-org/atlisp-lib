; test-m-rand-by-cputicks.lsp - m:rand-by-cputicks 函数测试
(load "src/fun/test-framework")
(load "src/m/rand-by-cputicks")

(test:suite 'm-rand-by-cputicks)

(test:add-case 'm-rand-by-cputicks 'test-call
  '((lambda () (m:rand-by-cputicks)))
  nil)

(test:add-case 'm-rand-by-cputicks 'test-call2
  '((lambda () (m:rand-by-cputicks)))
  nil)

(test:run-all)