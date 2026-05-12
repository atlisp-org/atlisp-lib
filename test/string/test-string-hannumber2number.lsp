; test-string-hannumber2number.lsp - string:hannumber2number 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/hannumber2number")

(test:suite 'string-hannumber2number)

(test:add-case 'string-hannumber2number 'test-hannumber2number-basic
  '((lambda () (string:hannumber2number "一百")))
  100)

(test:add-case 'string-hannumber2number 'test-hannumber2number-ten
  '((lambda () (string:hannumber2number "十")))
  10)

(test:add-case 'string-hannumber2number 'test-hannumber2number-thousand
  '((lambda () (string:hannumber2number "一千")))
  1000)

(test:add-case 'string-hannumber2number 'test-hannumber2number-complex
  '((lambda () (string:hannumber2number "一百二十三")))
  123)

(test:run-all)