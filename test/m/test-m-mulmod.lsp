; test-m-mulmod.lsp - m:mulmod 函数测试
(load "src/fun/test-framework")
(load "src/m/mulmod")

(test:suite 'm-mulmod)

(test:add-case 'm-mulmod 'test-3-4-10
  '((lambda () (m:mulmod 3 4 10)))
  2)

(test:add-case 'm-mulmod 'test-5-7-13
  '((lambda () (m:mulmod 5 7 13)))
  9)

(test:add-case 'm-mulmod 'test-2-9-7
  '((lambda () (m:mulmod 2 9 7)))
  4)

(test:run-all)