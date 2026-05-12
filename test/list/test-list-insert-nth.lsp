; test-list-insert-nth.lsp - list:insert-nth 函数测试
(load "src/fun/test-framework")
(load "src/list/insert-nth")

(test:suite 'list-insert-nth)

(test:add-case 'list-insert-nth 'test-insert-nth-1
  '((lambda () (list:insert-nth 'x 2 '(a b c d))))
  '(a b x c d))

(test:add-case 'list-insert-nth 'test-insert-nth-2
  '((lambda () (list:insert-nth 'z 0 '(1 2 3))))
  '(z 1 2 3))

(test:add-case 'list-insert-nth 'test-insert-nth-3
  '((lambda () (list:insert-nth 'm 3 '(x y z))))
  '(x y z m))

(test:add-case 'list-insert-nth 'test-insert-nth-4
  '((lambda () (list:insert-nth 'a 1 '(b c))))
  '(b a c))

(test:run-all)