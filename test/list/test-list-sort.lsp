; test-list-sort.lsp - list:sort 函数测试
(load "src/fun/test-framework")
(load "src/list/sort")

(test:suite 'list-sort)

(test:add-case 'list-sort 'test-sort-1
  '((lambda () (list:sort '(3 1 4 1 5 9 2 6) '<)))
  '(1 1 2 3 4 5 6 9))

(test:add-case 'list-sort 'test-sort-2
  '((lambda () (list:sort '(5 4 3 2 1) '>)))
  '(5 4 3 2 1))

(test:add-case 'list-sort 'test-sort-3
  '((lambda () (list:sort '(a c b a) '<)))
  '(a a b c))

(test:add-case 'list-sort 'test-sort-4
  '((lambda () (list:sort '(1 2 3) '<)))
  '(1 2 3))

(test:run-all)