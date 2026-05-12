; test-string-rsubstr.lsp - string:rsubstr 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/rsubstr")

(test:suite 'string-rsubstr)

(test:add-case 'string-rsubstr 'test-rsubstr-basic
  '((lambda () (string:rsubstr "hello" 2)))
  "lo")

(test:add-case 'string-rsubstr 'test-rsubstr-chinese
  '((lambda () (string:rsubstr "中国人" 2)))
  "国人")

(test:add-case 'string-rsubstr 'test-rsubstr-full
  '((lambda () (string:rsubstr "abcd" 4)))
  "abcd")

(test:add-case 'string-rsubstr 'test-rsubstr-empty
  '((lambda () (string:rsubstr "test" 0)))
  "")

(test:run-all)