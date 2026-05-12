; test-m-hex2dec.lsp - m:hex2dec 函数测试
(load "src/fun/test-framework")
(load "src/m/hex2dec")

(test:suite 'm-hex2dec)

(test:add-case 'm-hex2dec 'test-b0a1
  '((lambda () (m:hex2dec '0xB0A1)))
  45217)

(test:add-case 'm-hex2dec 'test-ff
  '((lambda () (m:hex2dec '0xFF)))
  255)

(test:add-case 'm-hex2dec 'test-10
  '((lambda () (m:hex2dec '0x10)))
  16)

(test:add-case 'm-hex2dec 'test-0
  '((lambda () (m:hex2dec '0x0)))
  0)

(test:run-all)