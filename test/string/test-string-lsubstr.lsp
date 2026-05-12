; test-string-lsubstr.lsp - string:lsubstr 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/lsubstr")

(test:suite 'string-lsubstr)

(test:add-case 'string-lsubstr 'test-lsubstr-basic
  '((lambda () (string:lsubstr "hello" 2)))
  "he")

(test:add-case 'string-lsubstr 'test-lsubstr-chinese
  '((lambda () (string:lsubstr "中国人" 2)))
  "中国")

(test:add-case 'string-lsubstr 'test-lsubstr-full
  '((lambda () (string:lsubstr "abcd" 4)))
  "abcd")

(test:add-case 'string-lsubstr 'test-lsubstr-zero
  '((lambda () (string:lsubstr "test" 0)))
  "")

(test:run-all)