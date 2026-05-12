; test-list-delsame-all.lsp - list:delsame-all 函数测试
(load "src/fun/test-framework")
(load "src/list/delsame-all")

(test:suite 'list-delsame-all)

(test:add-case 'list-delsame-all 'test-delsame-all-1
  '((lambda () (list:delsame-all '(1 2 3 2 4 3))))
  '(1 4))

(test:add-case 'list-delsame-all 'test-delsame-all-2
  '((lambda () (list:delsame-all '(a b a c b))))
  '(c))

(test:add-case 'list-delsame-all 'test-delsame-all-3
  '((lambda () (list:delsame-all '(1 2 3 4 5))))
  '(1 2 3 4 5))

(test:add-case 'list-delsame-all 'test-delsame-all-4
  '((lambda () (list:delsame-all nil)))
  nil)

(test:run-all)