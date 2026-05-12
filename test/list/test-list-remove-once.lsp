; test-list-remove-once.lsp - list:remove-once 函数测试
(load "src/fun/test-framework")
(load "src/list/remove-once")

(test:suite 'list-remove-once)

(test:add-case 'list-remove-once 'test-remove-once-1
  '((lambda () (list:remove-once '(1 2 3 4 3) 3)))
  '(1 2 4 3))

(test:add-case 'list-remove-once 'test-remove-once-2
  '((lambda () (list:remove-once '(a b c d) 'c)))
  '(a b d))

(test:add-case 'list-remove-once 'test-remove-once-3
  '((lambda () (list:remove-once '(1 2 3) 5)))
  '(1 2 3))

(test:add-case 'list-remove-once 'test-remove-once-4
  '((lambda () (list:remove-once '(x y x z) 'x)))
  '(y x z))

(test:run-all)