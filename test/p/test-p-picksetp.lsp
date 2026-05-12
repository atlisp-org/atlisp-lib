; test-p-picksetp.lsp - p:picksetp 函数测试
(load "src/fun/test-framework")
(load "src/p/picksetp")

(test:suite 'p-picksetp)

(test:add-case 'p-picksetp 'test-nil
  '((lambda () (p:picksetp nil)))
  nil)

(test:add-case 'p-picksetp 'test-int
  '((lambda () (p:picksetp 123)))
  nil)

(test:run-all)