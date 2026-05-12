; test-string-bytelength.lsp - string:bytelength 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/bytelength")

(test:suite 'string-bytelength)

(test:add-case 'string-bytelength 'test-bytelength-ascii
  '((lambda () (string:bytelength "abc")))
  3)

(test:add-case 'string-bytelength 'test-bytelength-chinese
  '((lambda () (string:bytelength "中国")))
  4)

(test:add-case 'string-bytelength 'test-bytelength-mixed
  '((lambda () (string:bytelength "a中国b")))
  5)

(test:add-case 'string-bytelength 'test-bytelength-empty
  '((lambda () (string:bytelength "")))
  0)

(test:run-all)