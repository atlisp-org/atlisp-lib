; test-datetime-mktime.lsp - datetime:mktime 函数测试
(load "src/fun/test-framework")
(load "src/datetime/mktime")
(load "src/datetime/leap-yearp")

(test:suite 'datetime-mktime)

(test:add-case 'datetime-mktime 'test-1970
  '((lambda () (datetime:mktime '(1970 1 0 1 0 0 0))))
  0.0)

(test:add-case 'datetime-mktime 'test-1970-1-1
  '((lambda () (datetime:mktime '(1970 1 0 1 0 0 0))))
  0.0)

(test:run-all)