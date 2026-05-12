; test-string-concat.lsp - string:concat 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/concat")

(test:suite 'string-concat)

(test:add-case 'string-concat 'test-concat-single
  '((lambda () (string:concat "hello")))
  "hello")

(test:add-case 'string-concat 'test-concat-list
  '((lambda () (string:concat '("a" "b" "c"))))
  "abc")

(test:add-case 'string-concat 'test-concat-two
  '((lambda () (string:concat '("hello" "world"))))
  "helloworld")

(test:add-case 'string-concat 'test-concat-empty-list
  '((lambda () (string:concat '())))
  nil)

(test:run-all)