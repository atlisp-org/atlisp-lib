; test-datetime-rfc1123-to-lisp.lsp - datetime:rfc1123-to-lisp 函数测试
(load "src/fun/test-framework")
(load "src/datetime/rfc1123-to-lisp")

(test:suite 'datetime-rfc1123-to-lisp)

(test:add-case 'datetime-rfc1123-to-lisp 'test-example
  '((lambda () (datetime:rfc1123-to-lisp "Mon, 12 Sep 2022 03:58:42 GMT")))
  '(2022 9 1 12 58 42 0))

(test:run-all)