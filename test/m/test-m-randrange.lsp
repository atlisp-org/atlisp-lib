; test-m-randrange.lsp - m:randrange 函数测试
(load "src/fun/test-framework")
(load "src/m/randrange")

(test:suite 'm-randrange)

(test:add-case 'm-randrange 'test-1-100
  '((lambda () (m:randrange 1 100)))
  nil)

(test:add-case 'm-randrange 'test-0-10
  '((lambda () (m:randrange 0 10)))
  nil)

(test:add-case 'm-randrange 'test-negative
  '((lambda () (m:randrange -5 5)))
  nil)

(test:run-all)