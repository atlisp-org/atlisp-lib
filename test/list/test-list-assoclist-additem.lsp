; test-list-assoclist-additem.lsp - list:assoclist-additem 函数测试
(load "src/fun/test-framework")
(load "src/list/assoclist-additem")

(test:suite 'list-assoclist-additem)

(test:add-case 'list-assoclist-additem 'test-assoclist-additem-1
  '((lambda () (list:assoclist-additem '((1 11) (2 22) (3 33) (4 44)) '(2 33))))
  '((1 11) (2 22) (3 33) (4 44)))

(test:add-case 'list-assoclist-additem 'test-assoclist-additem-2
  '((lambda () (list:assoclist-additem '((a 1) (b 2)) '(c 3))))
  '((c 3) (a 1) (b 2)))

(test:add-case 'list-assoclist-additem 'test-assoclist-additem-3
  '((lambda () (list:assoclist-additem '((x 10)) '(x 20))))
  '((x 10)))

(test:add-case 'list-assoclist-additem 'test-assoclist-additem-4
  '((lambda () (list:assoclist-additem nil '(k v))))
  '((k v)))

(test:run-all)