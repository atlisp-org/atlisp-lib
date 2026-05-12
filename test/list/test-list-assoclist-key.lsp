; test-list-assoclist-key.lsp - list:assoclist-key 函数测试
(load "src/fun/test-framework")
(load "src/list/assoclist-key")

(test:suite 'list-assoclist-key)

(test:add-case 'list-assoclist-key 'test-assoclist-key-1
  '((lambda () (list:assoclist-key '((1 11) (2 22) (3 33)) 2)))
  '(22))

(test:add-case 'list-assoclist-key 'test-assoclist-key-2
  '((lambda () (list:assoclist-key '((a 1) (b 2)) 'a)))
  '(1))

(test:add-case 'list-assoclist-key 'test-assoclist-key-3
  '((lambda () (list:assoclist-key '((x 10) (y 20) (z 30)) 5)))
  nil)

(test:add-case 'list-assoclist-key 'test-assoclist-key-4
  '((lambda () (list:assoclist-key '((1 "one") (2 "two")) 1)))
  '("one"))

(test:run-all)