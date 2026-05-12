; test-string-escape.lsp - string:escape 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/escape")

(test:suite 'string-escape)

(test:add-case 'string-escape 'test-escape-basic
  '((lambda () (string:escape "@test" "`" "@")))
  "`@test")

(test:add-case 'string-escape 'test-escape-star
  '((lambda () (string:escape "*" "`" "*")))
  "`*")

(test:add-case 'string-escape 'test-escape-multiple
  '((lambda () (string:escape "@*$" "`" "@*$")))
  "`@`*`$")

(test:add-case 'string-escape 'test-escape-none
  '((lambda () (string:escape "abc" "`" "*")))
  "abc")

(test:run-all)