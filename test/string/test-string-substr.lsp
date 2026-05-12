; test-string-substr.lsp - string:substr 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/substr")

(test:suite 'string-substr)

(test:add-case 'string-substr 'test-substr-basic
  '((lambda () (string:substr "hello" 1 3)))
  "hel")

(test:add-case 'string-substr 'test-substr-chinese
  '((lambda () (string:substr "中国人" 1 2)))
  "中国")

(test:add-case 'string-substr 'test-substr-from-middle
  '((lambda () (string:substr "abcdef" 3 2)))
  "cd")

(test:add-case 'string-substr 'test-substr-start-2
  '((lambda () (string:substr "abc" 2 1)))
  "b")

(test:run-all)