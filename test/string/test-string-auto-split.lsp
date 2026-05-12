; test-string-auto-split.lsp - string:auto-split 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/auto-split")

(test:suite 'string-auto-split)

(test:add-case 'string-auto-split 'test-auto-split-alpha
  '((lambda () (string:auto-split "abc")))
  '("abc"))

(test:add-case 'string-auto-split 'test-auto-split-number
  '((lambda () (string:auto-split "123")))
  '("123"))

(test:add-case 'string-auto-split 'test-auto-split-mixed
  '((lambda () (string:auto-split "aa33bb")))
  '("aa" "33" "bb"))

(test:add-case 'string-auto-split 'test-auto-split-chinese
  '((lambda () (string:auto-split "汉字")))
  '("汉字"))

(test:run-all)