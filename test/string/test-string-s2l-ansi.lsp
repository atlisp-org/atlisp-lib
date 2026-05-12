; test-string-s2l-ansi.lsp - string:s2l-ansi 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/s2l-ansi")

(test:suite 'string-s2l-ansi)

(test:add-case 'string-s2l-ansi 'test-s2l-ansi-ascii
  '((lambda () (string:s2l-ansi "ABC")))
  '(65 66 67))

(test:add-case 'string-s2l-ansi 'test-s2l-ansi-mixed
  '((lambda () (string:s2l-ansi "a1")))
  '(97 49))

(test:add-case 'string-s2l-ansi 'test-s2l-ansi-empty
  '((lambda () (string:s2l-ansi "")))
  nil)

(test:add-case 'string-s2l-ansi 'test-s2l-ansi-number
  '((lambda () (string:s2l-ansi "123")))
  '(49 50 51))

(test:run-all)