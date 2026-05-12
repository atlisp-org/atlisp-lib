; test-list-trim.lsp - list:trim 函数测试
(load "src/fun/test-framework")
(load "src/list/trim")

(test:suite 'list-trim)

(test:add-case 'list-trim 'test-trim-1
  '((lambda () (list:trim '(1 2 3 4 5 6) 1 1)))
  '(2 3 4 5))

(test:add-case 'list-trim 'test-trim-2
  '((lambda () (list:trim '(a b c d) 1 2)))
  '(b c))

(test:add-case 'list-trim 'test-trim-3
  '((lambda () (list:trim '(1 2 3) 0 1)))
  '(1 2))

(test:add-case 'list-trim 'test-trim-4
  '((lambda () (list:trim '(x y z) 2 0)))
  '(z))

(test:run-all)