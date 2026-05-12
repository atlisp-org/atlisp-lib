; test-string-search.lsp - string:search 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/search")

(test:suite 'string-search)

(test:add-case 'string-search 'test-search-basic
  '((lambda () (string:search "world" "hello world")))
  6)

(test:add-case 'string-search 'test-search-chinese
  '((lambda () (string:search "中国" "hello中国")))
  6)

(test:add-case 'string-search 'test-search-not-found
  '((lambda () (string:search "xyz" "hello")))
  nil)

(test:add-case 'string-search 'test-search-at-start
  '((lambda () (string:search "hello" "hello world")))
  0)

(test:run-all)