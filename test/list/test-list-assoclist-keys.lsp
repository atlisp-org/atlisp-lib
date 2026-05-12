; test-list-assoclist-keys.lsp - list:assoclist-keys 函数测试
(load "src/fun/test-framework")
(load "src/list/assoclist-keys")

(test:suite 'list-assoclist-keys)

(test:add-case 'list-assoclist-keys 'test-assoclist-keys-1
  '((lambda () (list:assoclist-keys '((1 11) (2 22) (3 33)))))
  '(1 2 3))

(test:add-case 'list-assoclist-keys 'test-assoclist-keys-2
  '((lambda () (list:assoclist-keys '((a 1) (b 2) (c 3)))))
  '(a b c))

(test:add-case 'list-assoclist-keys 'test-assoclist-keys-3
  '((lambda () (list:assoclist-keys nil)))
  nil)

(test:add-case 'list-assoclist-keys 'test-assoclist-keys-4
  '((lambda () (list:assoclist-keys '((x 10) (y 20)))))
  '(x y))

(test:run-all)