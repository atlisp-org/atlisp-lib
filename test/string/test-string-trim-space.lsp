; test-string-trim-space.lsp - string:trim-space 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/trim-space")

(test:suite 'string-trim-space)

(test:add-case 'string-trim-space 'test-trim-space-basic
  '((lambda () (string:trim-space "hello world")))
  "helloworld")

(test:add-case 'string-trim-space 'test-trim-space-multiple
  '((lambda () (string:trim-space "a b c")))
  "abc")

(test:add-case 'string-trim-space 'test-trim-space-none
  '((lambda () (string:trim-space "abc")))
  "abc")

(test:add-case 'string-trim-space 'test-trim-space-empty
  '((lambda () (string:trim-space "")))
  "")

(test:run-all)