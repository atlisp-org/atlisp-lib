; test-list-get-front-nth.lsp - list:get-front-nth 函数测试
(load "src/fun/test-framework")
(load "src/list/get-front-nth")

(test:suite 'list-get-front-nth)

(test:add-case 'list-get-front-nth 'test-get-front-nth-1
  '((lambda () (list:get-front-nth 3 '(1 2 3 4 5))))
  '(1 2 3))

(test:add-case 'list-get-front-nth 'test-get-front-nth-2
  '((lambda () (list:get-front-nth 0 '(a b c))))
  nil)

(test:add-case 'list-get-front-nth 'test-get-front-nth-3
  '((lambda () (list:get-front-nth 2 '(x y z w))))
  '(x y))

(test:add-case 'list-get-front-nth 'test-get-front-nth-4
  '((lambda () (list:get-front-nth 5 '(1 2))))
  '(1 2))

(test:run-all)