; test-m-dec2hex.lsp - m:dec2hex 函数测试
(load "src/fun/test-framework")
(load "src/m/dec2hex")

(test:suite 'm-dec2hex)

(test:add-case 'm-dec2hex 'test-45217
  '((lambda () (m:dec2hex 45217)))
  0xB0A1)

(test:add-case 'm-dec2hex 'test-255
  '((lambda () (m:dec2hex 255)))
  0xFF)

(test:add-case 'm-dec2hex 'test-16
  '((lambda () (m:dec2hex 16)))
  0x10)

(test:add-case 'm-dec2hex 'test-0
  '((lambda () (m:dec2hex 0)))
  0x0)

(test:run-all)