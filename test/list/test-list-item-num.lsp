; test-list-item-num.lsp - list:item-num 函数测试
(load "src/fun/test-framework")
(load "src/list/item-num")

(test:suite 'list-item-num)

(test:add-case 'list-item-num 'test-item-num-1
  '((lambda () (list:item-num '(a b a c a b))))
  '((a 3) (b 2) (c 1)))

(test:add-case 'list-item-num 'test-item-num-2
  '((lambda () (list:item-num '(1 2 3 4))))
  '((1 1) (2 1) (3 1) (4 1)))

(test:add-case 'list-item-num 'test-item-num-3
  '((lambda () (list:item-num '(x x x))))
  '((x 3)))

(test:add-case 'list-item-num 'test-item-num-4
  '((lambda () (list:item-num nil)))
  nil)

(test:run-all)