; test-p-variantp.lsp - p:variantp 函数测试
(load "src/fun/test-framework")
(load "src/p/variantp")

(test:suite 'p-variantp)

(test:add-case 'p-variantp 'test-nil
  '((lambda () (p:variantp nil)))
  nil)

(test:add-case 'p-variantp 'test-int
  '((lambda () (p:variantp 123)))
  nil)

(test:add-case 'p-variantp 'test-str
  '((lambda () (p:variantp "test")))
  nil)

(test:run-all)