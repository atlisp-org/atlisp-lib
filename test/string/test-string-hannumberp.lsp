; test-string-hannumberp.lsp - string:hannumberp 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/hannumberp")

(test:suite 'string-hannumberp)

(test:add-case 'string-hannumberp 'test-hannumberp-basic
  '((lambda () (string:hannumberp "一百")))
  t)

(test:add-case 'string-hannumberp 'test-hannumberp-single
  '((lambda () (string:hannumberp "五")))
  t)

(test:add-case 'string-hannumberp 'test-hannumberp-partial
  '((lambda () (string:hannumberp "五元")))
  nil)

(test:add-case 'string-hannumberp 'test-hannumberp-number
  '((lambda () (string:hannumberp "123")))
  nil)

(test:run-all)