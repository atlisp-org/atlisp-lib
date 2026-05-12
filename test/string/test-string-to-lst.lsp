; test-string-to-lst.lsp - string:to-lst 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/to-lst")

(test:suite 'string-to-lst)

(test:add-case 'string-to-lst 'test-to-lst-comma
  '((lambda () (string:to-lst "a,b,c" ",")))
  '("a" "b" "c"))

(test:add-case 'string-to-lst 'test-to-lst-space
  '((lambda () (string:to-lst "one two" " ")))
  '("one" "two"))

(test:add-case 'string-to-lst 'test-to-lst-no-separator
  '((lambda () (string:to-lst "test" ",")))
  '("test"))

(test:add-case 'string-to-lst 'test-to-lst-empty-separator
  '((lambda () (string:to-lst "abc" "")))
  '("a" "b" "c"))

(test:run-all)