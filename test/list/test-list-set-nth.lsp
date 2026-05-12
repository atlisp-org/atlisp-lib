; test-list-set-nth.lsp - list:set-nth 函数测试
(load "src/fun/test-framework")
(load "src/list/set-nth")

(test:suite 'list-set-nth)

(test:add-case 'list-set-nth 'test-set-nth-1
  '((lambda () (list:set-nth 'new 0 '(a b c))))
  '(new b c))

(test:add-case 'list-set-nth 'test-set-nth-2
  '((lambda () (list:set-nth 'z 2 '(a b c d))))
  '(a b z d))

(test:add-case 'list-set-nth 'test-set-nth-3
  '((lambda () (list:set-nth 'X 1 '(1 2 3))))
  '(1 X 3))

(test:add-case 'list-set-nth 'test-set-nth-4
  '((lambda () (list:set-nth 'a 5 '(x y z))))
  '(x y z))

(test:run-all)