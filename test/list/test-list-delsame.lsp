; test-list-delsame.lsp - list:delsame 函数测试
(load "src/fun/test-framework")
(load "src/list/delsame")
(load "src/list/equal")

(test:suite 'list-delsame)

(test:add-case 'list-delsame 'test-delsame-1
  '((lambda () (list:delsame '(1 2 2 3 2 4) 0)))
  '(1 2 3 4))

(test:add-case 'list-delsame 'test-delsame-2
  '((lambda () (list:delsame '(a a b c a) 0)))
  '(a b c))

(test:add-case 'list-delsame 'test-delsame-3
  '((lambda () (list:delsame '(1 2 3 4 5) 0)))
  '(1 2 3 4 5))

(test:add-case 'list-delsame 'test-delsame-4
  '((lambda () (list:delsame '(x y x y x) 0)))
  '(x y))

(test:run-all)