; test-string-regexp-replace.lsp - string:regexp-replace 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/regexp-replace")

(test:suite 'string-regexp-replace)

(test:add-case 'string-regexp-replace 'test-regexp-replace-basic
  '((lambda () (string:regexp-replace "hello world" "foo" "world")))
  "hello foo")

(test:add-case 'string-regexp-replace 'test-regexp-replace-global
  '((lambda () (string:regexp-replace "a b a b" "x" "a" "g")))
  "x b x b")

(test:add-case 'string-regexp-replace 'test-regexp-replace-case
  '((lambda () (string:regexp-replace "ABC" "abc" "a" "i")))
  "abc")

(test:add-case 'string-regexp-replace 'test-regexp-replace-not-found
  '((lambda () (string:regexp-replace "hello" "xxx" "world")))
  "hello")

(test:run-all)