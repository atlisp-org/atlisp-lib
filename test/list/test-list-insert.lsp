; test-list-insert.lsp - list:insert 函数测试
(load "src/fun/test-framework")
(load "src/list/insert")

(test:suite 'list-insert)

(test:add-case 'list-insert 'test-insert-1
  '((lambda () (list:insert '(0 1 2 3) 1 5)))
  '(5 0 1 2 3))

(test:add-case 'list-insert 'test-insert-2
  '((lambda () (list:insert '(1 2 3) 0 0)))
  '(0 1 2 3))

(test:add-case 'list-insert 'test-insert-3
  '((lambda () (list:insert '(a b c) 2 'x)))
  '(a b x c))

(test:add-case 'list-insert 'test-insert-4
  '((lambda () (list:insert '(1 2) 5 3)))
  '(1 2 3))

(test:run-all)