; test-datetime-leap-yearp.lsp - datetime:leap-yearp 函数测试
(load "src/fun/test-framework")
(load "src/datetime/leap-yearp")

(test:suite 'datetime-leap-yearp)

(test:add-case 'datetime-leap-yearp 'test-2020
  '((lambda () (datetime:leap-yearp 2020)))
  t)

(test:add-case 'datetime-leap-yearp 'test-2021
  '((lambda () (datetime:leap-yearp 2021)))
  nil)

(test:add-case 'datetime-leap-yearp 'test-2000
  '((lambda () (datetime:leap-yearp 2000)))
  t)

(test:add-case 'datetime-leap-yearp 'test-1900
  '((lambda () (datetime:leap-yearp 1900)))
  nil)

(test:run-all)