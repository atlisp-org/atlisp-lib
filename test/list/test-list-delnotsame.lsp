; test-list-delnotsame.lsp - list:delnotsame 函数测试
(load "src/fun/test-framework")
(load "src/list/delnotsame")

(test:suite 'list-delnotsame)

(test:add-case 'list-delnotsame 'test-delnotsame-1
  '((lambda () (list:delnotsame '(1 2 3 2 4))))
  '(2))

(test:add-case 'list-delnotsame 'test-delnotsame-2
  '((lambda () (list:delnotsame '(a b a c b))))
  '(a b))

(test:add-case 'list-delnotsame 'test-delnotsame-3
  '((lambda () (list:delnotsame '(1 2 3 4 5))))
  nil)

(test:add-case 'list-delnotsame 'test-delnotsame-4
  '((lambda () (list:delnotsame '(x x y y z))))
  '(x y))

(test:run-all)