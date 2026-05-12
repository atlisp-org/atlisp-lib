; test-list-difference.lsp - list:difference 函数测试
(load "src/fun/test-framework")
(load "src/list/difference")

(test:suite 'list-difference)

(test:add-case 'list-difference 'test-difference-1
  '((lambda () (list:difference '(1 2 3 4) '(2 4))))
  '(1 3))

(test:add-case 'list-difference 'test-difference-2
  '((lambda () (list:difference '(a b c) '(a b c))))
  nil)

(test:add-case 'list-difference 'test-difference-3
  '((lambda () (list:difference '(1 2 3) '(4 5 6))))
  '(1 2 3))

(test:add-case 'list-difference 'test-difference-4
  '((lambda () (list:difference nil '(a b))))
  nil)

(test:run-all)