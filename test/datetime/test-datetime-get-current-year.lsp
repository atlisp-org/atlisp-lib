; test-datetime-get-current-year.lsp - datetime:get-current-year 函数测试
(load "src/fun/test-framework")
(load "src/datetime/get-current-year")

(test:suite 'datetime-get-current-year)

(test:add-case 'datetime-get-current-year 'test-type
  '((lambda () (datetime:get-current-year)))
  "2024")

(test:run-all)