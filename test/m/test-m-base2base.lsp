; test-m-base2base.lsp - m:base2base 函数测试
(load "src/fun/test-framework")
(load "src/m/base2base")

(test:suite 'm-base2base)

(test:add-case 'm-base2base 'test-ff-16-2
  '((lambda () (m:base->base "FF" 16 2)))
  "11111111")

(test:add-case 'm-base2base 'test-1010-2-16
  '((lambda () (m:base->base "1010" 2 16)))
  "A")

(test:add-case 'm-base2base 'test-10-10-2
  '((lambda () (m:base->base "10" 10 2)))
  "1010")

(test:run-all)