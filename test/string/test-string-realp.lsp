; test-string-realp.lsp - string:realp 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/realp")

(test:suite 'string-realp)

(test:add-case 'string-realp 'test-realp-float
  '((lambda () (string:realp "1.5")))
  t)

(test:add-case 'string-realp 'test-realp-integer
  '((lambda () (string:realp "100")))
  t)

(test:add-case 'string-realp 'test-realp-negative
  '((lambda () (string:realp "-3.14")))
  t)

(test:add-case 'string-realp 'test-realp-string
  '((lambda () (string:realp "abc")))
  nil)

(test:run-all)