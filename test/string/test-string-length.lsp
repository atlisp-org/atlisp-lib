; test-string-length.lsp - string:length 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/length")

(test:suite 'string-length)

(test:add-case 'string-length 'test-length-ascii
  '((lambda () (string:length "hello")))
  5)

(test:add-case 'string-length 'test-length-chinese
  '((lambda () (string:length "中国")))
  2)

(test:add-case 'string-length 'test-length-mixed
  '((lambda () (string:length "中国a")))
  3)

(test:add-case 'string-length 'test-length-empty
  '((lambda () (string:length "")))
  0)

(test:run-all)