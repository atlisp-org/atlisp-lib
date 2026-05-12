; test-p-intp.lsp - p:intp 函数测试
(load "src/fun/test-framework")
(load "src/p/intp")

(test:suite 'p-intp)

(test:add-case 'p-intp 'test-nil
  '((lambda () (p:intp nil)))
  nil)

(test:add-case 'p-intp 'test-int
  '((lambda () (p:intp 123)))
  t)

(test:add-case 'p-intp 'test-real
  '((lambda () (p:intp 1.5)))
  nil)

(test:add-case 'p-intp 'test-str
  '((lambda () (p:intp "123")))
  nil)

(test:run-all)