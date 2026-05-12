; test-datetime-get-universal-time.lsp - datetime:get-universal-time 函数测试
(load "src/fun/test-framework")
(load "src/datetime/get-universal-time")

(test:suite 'datetime-get-universal-time)

(test:add-case 'datetime-get-universal-time 'test-type
  '((lambda () (datetime:get-universal-time)))
  0)

(test:run-all)