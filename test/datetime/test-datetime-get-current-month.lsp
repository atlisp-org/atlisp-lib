; test-datetime-get-current-month.lsp - datetime:get-current-month 函数测试
(load "src/fun/test-framework")
(load "src/datetime/get-current-month")

(test:suite 'datetime-get-current-month)

(test:add-case 'datetime-get-current-month 'test-type
  '((lambda () (datetime:get-current-month)))
  "01")

(test:run-all)