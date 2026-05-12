; test-list-remove-front-nth.lsp - list:remove-front-nth 函数测试
(load "src/fun/test-framework")
(load "src/list/remove-front-nth")

(test:suite 'list-remove-front-nth)

(test:add-case 'list-remove-front-nth 'test-remove-front-nth-1
  '((lambda () (list:remove-front-nth 2 '(1 2 3 4 5))))
  '(3 4 5))

(test:add-case 'list-remove-front-nth 'test-remove-front-nth-2
  '((lambda () (list:remove-front-nth 0 '(a b c))))
  '(a b c))

(test:add-case 'list-remove-front-nth 'test-remove-front-nth-3
  '((lambda () (list:remove-front-nth 3 '(1 2))))
  '(1 2))

(test:add-case 'list-remove-front-nth 'test-remove-front-nth-4
  '((lambda () (list:remove-front-nth 1 '(x y z))))
  '(y z))

(test:run-all)