; test-string-regexp-search.lsp - string:regexp-search 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/regexp-search")

(test:suite 'string-regexp-search)

(test:add-case 'string-regexp-search 'test-regexp-search-basic
  '((lambda () (string:regexp-search "hello world" "world")))
  '((6 5 "world")))

(test:add-case 'string-regexp-search 'test-regexp-search-global
  '((lambda () (string:regexp-search "a a a" "a" "g")))
  '((0 1 "a") (2 1 "a") (4 1 "a")))

(test:add-case 'string-regexp-search 'test-regexp-search-number
  '((lambda () (string:regexp-search "test123abc" "\\d+")))
  '((4 3 "123")))

(test:add-case 'string-regexp-search 'test-regexp-search-not-found
  '((lambda () (string:regexp-search "hello" "xyz")))
  nil)

(test:run-all)