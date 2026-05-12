; test-m-intersect.lsp - m:intersect 函数测试
(load "src/fun/test-framework")
(load "src/m/intersect")

(test:suite 'm-intersect)

(test:add-case 'm-intersect 'test-12-23
  '((lambda () (m:intersect '(1 2 3) '(2 3 4))))
  '(2 3))

(test:add-case 'm-intersect 'test-empty
  '((lambda () (m:intersect '(1 2 3) '(4 5 6))))
  nil)

(test:add-case 'm-intersect 'test-identical
  '((lambda () (m:intersect '(1 2 3) '(1 2 3))))
  '(1 2 3))

(test:run-all)