; test-m-fast-expt.lsp - m:fast-expt 函数测试
(load "src/fun/test-framework")
(load "src/m/fast-expt")

(test:suite 'm-fast-expt)

(test:add-case 'm-fast-expt 'test-2-10
  '((lambda () (m:fast-expt 2 10)))
  1024)

(test:add-case 'm-fast-expt 'test-3-4
  '((lambda () (m:fast-expt 3 4)))
  81)

(test:add-case 'm-fast-expt 'test-5-0
  '((lambda () (m:fast-expt 5 0)))
  1)

(test:add-case 'm-fast-expt 'test-2-8
  '((lambda () (m:fast-expt 2 8)))
  256)

(test:run-all)