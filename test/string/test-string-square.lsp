; test-string-square.lsp - string:square 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/square")

(test:suite 'string-square)

(test:add-case 'string-square 'test-square-2
  '((lambda () (string:square 2 "ab")))
  "abab")

(test:add-case 'string-square 'test-square-3
  '((lambda () (string:square 3 "x")))
  "xxx")

(test:add-case 'string-square 'test-square-zero
  '((lambda () (string:square 0 "test")))
  "")

(test:add-case 'string-square 'test-square-one
  '((lambda () (string:square 1 "a")))
  "a")

(test:run-all)