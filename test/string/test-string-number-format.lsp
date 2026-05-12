; test-string-number-format.lsp - string:number-format 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/number-format")

(test:suite 'string-number-format)

(test:add-case 'string-number-format 'test-number-format-basic
  '((lambda () (string:number-format "5.3" 3 3 " 0")))
  "  5.300")

(test:add-case 'string-number-format 'test-number-format-integer
  '((lambda () (string:number-format "123" 5 0 "0")))
  "00123")

(test:add-case 'string-number-format 'test-number-format-fraction
  '((lambda () (string:number-format "1.5" 2 2 "0")))
  "1.50")

(test:add-case 'string-number-format 'test-number-format-zero
  '((lambda () (string:number-format "0" 3 2 "0")))
  "000.00")

(test:run-all)