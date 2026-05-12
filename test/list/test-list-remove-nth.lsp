; test-list-remove-nth.lsp - list:remove-nth 函数测试
(load "src/fun/test-framework")
(load "src/list/remove-nth")

(test:suite 'list-remove-nth)

(test:add-case 'list-remove-nth 'test-remove-nth-1
  '((lambda () (list:remove-nth 2 '(a b c d e))))
  '(a b d e))

(test:add-case 'list-remove-nth 'test-remove-nth-2
  '((lambda () (list:remove-nth 0 '(1 2 3))))
  '(2 3))

(test:add-case 'list-remove-nth 'test-remove-nth-3
  '((lambda () (list:remove-nth 4 '(x y z w))))
  '(x y z w))

(test:add-case 'list-remove-nth 'test-remove-nth-4
  '((lambda () (list:remove-nth 1 '(a b c))))
  '(a c))

(test:run-all)