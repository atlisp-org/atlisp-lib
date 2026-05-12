; test-list-group-by.lsp - list:group-by 函数测试
(load "src/fun/test-framework")
(load "src/list/group-by")

(test:suite 'list-group-by)

(test:add-case 'list-group-by 'test-group-by-1
  '((lambda () (list:group-by '(a a a b b c) '(lambda(x y)(= x y)))))
  '((a a a) (b b) (c)))

(test:add-case 'list-group-by 'test-group-by-2
  '((lambda () (list:group-by '(1 2 3 4) '(lambda(x y)(< x y)))))
  '((1) (2) (3) (4)))

(test:add-case 'list-group-by 'test-group-by-3
  '((lambda () (list:group-by '(x x y y) '(lambda(a b)(= a b)))))
  '((x x) (y y)))

(test:add-case 'list-group-by 'test-group-by-4
  '((lambda () (list:group-by '(a) '(lambda(x y)(= x y)))))
  '((a)))

(test:run-all)