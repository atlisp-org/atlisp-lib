; test-m-transpt.lsp - m:transpt 函数测试
(load "src/fun/test-framework")
(load "src/m/transpt")

(test:suite 'm-transpt)

(test:add-case 'm-transpt 'test-basic
  '((lambda () (m:transpt '(0 0) '(5 5) '(0 0) 0)))
  nil)

(test:run-all)