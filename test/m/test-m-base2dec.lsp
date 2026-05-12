; test-m-base2dec.lsp - m:base2dec 函数测试
(load "src/fun/test-framework")
(load "src/m/base2dec")

(test:suite 'm-base2dec)

(test:add-case 'm-base2dec 'test-b0a1-16
  '((lambda () (m:base2dec "B0A1" 16)))
  45217)

(test:add-case 'm-base2dec 'test-ff-16
  '((lambda () (m:base2dec "FF" 16)))
  255)

(test:add-case 'm-base2dec 'test-1010-2
  '((lambda () (m:base2dec "1010" 2)))
  10)

(test:add-case 'm-base2dec 'test-12-8
  '((lambda () (m:base2dec "12" 8)))
  10)

(test:run-all)