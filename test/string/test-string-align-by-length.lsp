; test-string-align-by-length.lsp - string:align-by-length 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/align-by-length")

(test:suite 'string-align-by-length)

(test:add-case 'string-align-by-length 'test-align-by-length-basic
  '((lambda () (string:align-by-length "abc" 8)))
  "   abc  ")

(test:add-case 'string-align-by-length 'test-align-by-length-same
  '((lambda () (string:align-by-length "hello" 5)))
  "hello")

(test:add-case 'string-align-by-length 'test-align-by-length-longer
  '((lambda () (string:align-by-length "test" 2)))
  "test")

(test:add-case 'string-align-by-length 'test-align-by-length-empty
  '((lambda () (string:align-by-length "" 4)))
  "    ")

(test:run-all)