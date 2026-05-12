; test-datetime-mktime1900.lsp - datetime:mktime1900 函数测试
(load "src/fun/test-framework")
(load "src/datetime/mktime1900")

(test:suite 'datetime-mktime1900)

(test:add-case 'datetime-mktime1900 'test-zero
  '((lambda () (datetime:mktime1900 0)))
  2208900000.0)

(test:add-case 'datetime-mktime1900 'test-positive
  '((lambda () (datetime:mktime1900 100)))
  2208900100.0)

(test:run-all)