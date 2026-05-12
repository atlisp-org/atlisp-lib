; test-string-numberp.lsp - string:numberp 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/numberp")

(test:suite 'string-numberp)

(test:add-case 'string-numberp 'test-numberp-integer
  '((lambda () (string:numberp "123")))
  t)

(test:add-case 'string-numberp 'test-numberp-float
  '((lambda () (string:numberp "1.5")))
  t)

(test:add-case 'string-numberp 'test-numberp-negative
  '((lambda () (string:numberp "-456")))
  t)

(test:add-case 'string-numberp 'test-numberp-string
  '((lambda () (string:numberp "abc")))
  nil)

(test:run-all)