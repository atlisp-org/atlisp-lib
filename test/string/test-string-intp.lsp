; test-string-intp.lsp - string:intp 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/intp")

(test:suite 'string-intp)

(test:add-case 'string-intp 'test-intp-positive
  '((lambda () (string:intp "123")))
  t)

(test:add-case 'string-intp 'test-intp-negative
  '((lambda () (string:intp "-456")))
  t)

(test:add-case 'string-intp 'test-intp-zero
  '((lambda () (string:intp "0")))
  t)

(test:add-case 'string-intp 'test-intp-float
  '((lambda () (string:intp "1.5")))
  nil)

(test:add-case 'string-intp 'test-intp-string
  '((lambda () (string:intp "abc")))
  nil)

(test:run-all)