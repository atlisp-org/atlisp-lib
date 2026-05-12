; test-m-trim.lsp - m:trim 函数测试
(load "src/fun/test-framework")
(load "src/m/trim")

(test:suite 'm-trim)

(test:add-case 'm-trim 'test-1-8000
  '((lambda () (m:trim 1.8000)))
  nil)

(test:add-case 'm-trim 'test-123-456
  '((lambda () (m:trim 123.456)))
  nil)

(test:add-case 'm-trim 'test-integer
  '((lambda () (m:trim 100.0)))
  nil)

(test:run-all)