; test-list-intersect.lsp - list:intersect 函数测试
(load "src/fun/test-framework")
(load "src/list/intersect")

(test:suite 'list-intersect)

(test:add-case 'list-intersect 'test-intersect-1
  '((lambda () (list:intersect '(1 2 3 4) '(3 4 5))))
  '(3 4))

(test:add-case 'list-intersect 'test-intersect-2
  '((lambda () (list:intersect '(a b c) '(d e f))))
  nil)

(test:add-case 'list-intersect 'test-intersect-3
  '((lambda () (list:intersect '(1 2 3) '(1 2 3))))
  '(1 2 3))

(test:add-case 'list-intersect 'test-intersect-4
  '((lambda () (list:intersect nil '(1 2))))
  nil)

(test:run-all)