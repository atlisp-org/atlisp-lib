; test-string-rightsubstr.lsp - string:rightsubstr 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/rightsubstr")

(test:suite 'string-rightsubstr)

(test:add-case 'string-rightsubstr 'test-rightsubstr-basic
  '((lambda () (string:rightsubstr "hello" 2)))
  "lo")

(test:add-case 'string-rightsubstr 'test-rightsubstr-chinese
  '((lambda () (string:rightsubstr "中国人" 2)))
  "国人")

(test:add-case 'string-rightsubstr 'test-rightsubstr-full
  '((lambda () (string:rightsubstr "abcd" 4)))
  "abcd")

(test:add-case 'string-rightsubstr 'test-rightsubstr-empty
  '((lambda () (string:rightsubstr "test" 0)))
  "")

(test:run-all)