; test-string-from-list.lsp - string:from-list 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/from-list")

(test:suite 'string-from-list)

(test:add-case 'string-from-list 'test-from-list-ascii
  '((lambda () (string:from-list '(65 66 67) ",")))
  "A,B,C")

(test:add-case 'string-from-list 'test-from-list-simple
  '((lambda () (string:from-list '(97 98 99) "-")))
  "a-b-c")

(test:add-case 'string-from-list 'test-from-list-single
  '((lambda () (string:from-list '(65) ",")))
  "A")

(test:add-case 'string-from-list 'test-from-list-mixed
  '((lambda () (string:from-list '(65 66 67 68) "")))
  "ABCD")

(test:run-all)