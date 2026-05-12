; test-string-reverse.lsp - string:reverse 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/reverse")

(test:suite 'string-reverse)

(test:add-case 'string-reverse 'test-reverse-basic
  '((lambda () (string:reverse "hello")))
  "olleh")

(test:add-case 'string-reverse 'test-reverse-chinese
  '((lambda () (string:reverse "中国人")))
  "人国中")

(test:add-case 'string-reverse 'test-reverse-single
  '((lambda () (string:reverse "a")))
  "a")

(test:add-case 'string-reverse 'test-reverse-empty
  '((lambda () (string:reverse "")))
  "")

(test:run-all)