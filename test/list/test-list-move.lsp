; test-list-move.lsp - list:move 函数测试
(load "src/fun/test-framework")
(load "src/list/move")

(test:suite 'list-move)

(test:add-case 'list-move 'test-move-1
  '((lambda () (list:move '(1 2 3 4) 1)))
  '(2 3 4 1))

(test:add-case 'list-move 'test-move-2
  '((lambda () (list:move '(a b c d) -1)))
  '(d a b c))

(test:add-case 'list-move 'test-move-3
  '((lambda () (list:move '(x y) 2)))
  '(x y))

(test:add-case 'list-move 'test-move-4
  '((lambda () (list:move '(1 2 3) 0)))
  '(1 2 3))

(test:run-all)