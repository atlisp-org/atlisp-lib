; test-string-from-lst.lsp - string:from-lst 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/from-lst")

(test:suite 'string-from-lst)

(test:add-case 'string-from-lst 'test-from-lst-basic
  '((lambda () (string:from-lst '("a" "b" "c") ",")))
  "a,b,c")

(test:add-case 'string-from-lst 'test-from-lst-space
  '((lambda () (string:from-lst '("one" "two") " ")))
  "one two")

(test:add-case 'string-from-lst 'test-from-lst-single
  '((lambda () (string:from-lst '("only") ",")))
  "only")

(test:add-case 'string-from-lst 'test-from-lst-empty-sep
  '((lambda () (string:from-lst '("a" "b") "")))
  "ab")

(test:run-all)