; test-datetime-get-internal-real-time.lsp - datetime:get-internal-real-time 函数测试
(load "src/fun/test-framework")
(load "src/datetime/get-internal-real-time")

(test:suite 'datetime-get-internal-real-time)

(test:add-case 'datetime-get-internal-real-time 'test-type
  '((lambda () (datetime:get-internal-real-time)))
  0)

(test:run-all)