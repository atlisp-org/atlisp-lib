; test-string-to-list.lsp - string:to-list 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/to-list")

(test:suite 'string-to-list)

(test:add-case 'string-to-list 'test-to-list-comma
  '((lambda () (string:to-list "a,b,c" ",")))
  '("a" "b" "c"))

(test:add-case 'string-to-list 'test-to-list-space
  '((lambda () (string:to-list "hello world" " ")))
  '("hello" "world"))

(test:add-case 'string-to-list 'test-to-list-no-sep
  '((lambda () (string:to-list "test" ",")))
  '("test"))

(test:add-case 'string-to-list 'test-to-list-empty-sep
  '((lambda () (string:to-list "abc" "")))
  '("a" "b" "c"))

(test:run-all)