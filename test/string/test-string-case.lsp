; test-string-case.lsp - string:case 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/case")

(test:suite 'string-case)

(test:add-case 'string-case 'test-uppercase-basic
  '((lambda () (string:case "hello" 1)))
  "HELLO")

(test:add-case 'string-case 'test-lowercase-basic
  '((lambda () (string:case "HELLO" 2)))
  "hello")

(test:add-case 'string-case 'test-uppercase-mixed
  '((lambda () (string:case "HeLLo WoRLd" 1)))
  "HELLO WORLD")

(test:add-case 'string-case 'test-lowercase-mixed
  '((lambda () (string:case "ABC DEF" 2)))
  "abc def")

(test:add-case 'string-case 'test-number-unchanged
  '((lambda () (string:case "abc123" 1)))
  "ABC123")

(test:run-all)