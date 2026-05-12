; test-string-l2s-ansi.lsp - string:l2s-ansi 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/l2s-ansi")

(test:suite 'string-l2s-ansi)

(test:add-case 'string-l2s-ansi 'test-l2s-ansi-ascii
  '((lambda () (string:l2s-ansi '(65 66 67))))
  "ABC")

(test:add-case 'string-l2s-ansi 'test-l2s-ansi-mixed
  '((lambda () (string:l2s-ansi '(97 49))))
  "a1")

(test:add-case 'string-l2s-ansi 'test-l2s-ansi-empty
  '((lambda () (string:l2s-ansi nil)))
  "")

(test:add-case 'string-l2s-ansi 'test-l2s-ansi-number
  '((lambda () (string:l2s-ansi '(49 50 51))))
  "123")

(test:run-all)