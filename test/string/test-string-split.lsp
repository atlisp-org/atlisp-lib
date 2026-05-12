; test-string-split.lsp - string:split 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/split")

(test:suite 'string-split)

(test:add-case 'string-split 'test-split-comma
  '((lambda () (string:split "a,b,c" ",")))
  '("a" "b" "c"))

(test:add-case 'string-split 'test-split-space
  '((lambda () (string:split "hello world" " ")))
  '("hello" "world"))

(test:add-case 'string-split 'test-split-semicolon
  '((lambda () (string:split "x;y;z" ";")))
  '("x" "y" "z"))

(test:add-case 'string-split 'test-split-no-separator
  '((lambda () (string:split "abc" ",")))
  '("abc"))

(test:run-all)