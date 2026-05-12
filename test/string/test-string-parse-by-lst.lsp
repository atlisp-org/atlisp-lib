; test-string-parse-by-lst.lsp - string:parse-by-lst 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/parse-by-lst")

(test:suite 'string-parse-by-lst)

(test:add-case 'string-parse-by-lst 'test-parse-by-lst-multi
  '((lambda () (string:parse-by-lst "a-b=c" '("-" "="))))
  '("a" "b" "c"))

(test:add-case 'string-parse-by-lst 'test-parse-by-lst-single
  '((lambda () (string:parse-by-lst "a,b,c" '(","))))
  '("a" "b" "c"))

(test:add-case 'string-parse-by-lst 'test-parse-by-lst-no-delim
  '((lambda () (string:parse-by-lst "abc" '("-"))))
  '("abc"))

(test:add-case 'string-parse-by-lst 'test-parse-by-lst-newline
  '((lambda () (string:parse-by-lst "a
b" '("
"))))
  '("a" "b"))

(test:run-all)