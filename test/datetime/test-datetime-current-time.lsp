; test-datetime-current-time.lsp - datetime:current-time 函数测试
(load "src/fun/test-framework")
(load "src/datetime/current-time")

(test:suite 'datetime-current-time)

(test:add-case 'datetime-current-time 'test-format
  '((lambda () (datetime:current-time "yyyy-mo-dd hh:mm:ss")))
  "2024-01-01 12:00:00")

(test:run-all)