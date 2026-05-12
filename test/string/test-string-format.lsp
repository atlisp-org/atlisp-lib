; test-string-format.lsp - string:format 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/format")

(test:suite 'string-format)

(test:add-case 'string-format 'test-format-single
  '((lambda () (string:format "Hello {0}" "World")))
  "Hello World")

(test:add-case 'string-format 'test-format-multiple
  '((lambda () (string:format "{0} {1} {2}" '("a" "b" "c"))))
  "a b c")

(test:add-case 'string-format 'test-format-no-placeholder
  '((lambda () (string:format "No placeholder" "test")))
  "No placeholder")

(test:add-case 'string-format 'test-format-number
  '((lambda () (string:format "Value: {0}" "123")))
  "Value: 123")

(test:run-all)