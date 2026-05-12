; test-m-rtos.lsp - m:rtos 函数测试
(load "src/fun/test-framework")
(load "src/m/rtos")

(test:suite 'm-rtos)

(test:add-case 'm-rtos 'test-1-8000-3
  '((lambda () (m:rtos 1.8000 3)))
  "1.800")

(test:add-case 'm-rtos 'test-123-456-2
  '((lambda () (m:rtos 123.456 2)))
  "123.46")

(test:add-case 'm-rtos 'test-100-0
  '((lambda () (m:rtos 100.0 0)))
  "100")

(test:run-all)