; test-datetime-get-current-day.lsp - datetime:get-current-day 函数测试
(load "src/fun/test-framework")
(load "src/datetime/get-current-day")

(test:suite 'datetime-get-current-day)

(test:add-case 'datetime-get-current-day 'test-type
  '((lambda () (datetime:get-current-day)))
  "01")

(test:run-all)