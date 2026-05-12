; test-m-dec2base.lsp - m:dec2base 函数测试
(load "src/fun/test-framework")
(load "src/m/dec2base")

(test:suite 'm-dec2base)

(test:add-case 'm-dec2base 'test-3323-16
  '((lambda () (m:dec2base 3323 16)))
  "CB3")

(test:add-case 'm-dec2base 'test-255-16
  '((lambda () (m:dec2base 255 16)))
  "FF")

(test:add-case 'm-dec2base 'test-10-2
  '((lambda () (m:dec2base 10 2)))
  "1010")

(test:add-case 'm-dec2base 'test-10-8
  '((lambda () (m:dec2base 10 8)))
  "12")

(test:run-all)