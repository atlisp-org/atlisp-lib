; test-list-assoclist-appenditem.lsp - list:assoclist-appenditem 函数测试
(load "src/fun/test-framework")
(load "src/list/assoclist-appenditem")

(test:suite 'list-assoclist-appenditem)

(test:add-case 'list-assoclist-appenditem 'test-assoclist-appenditem-1
  '((lambda () (list:assoclist-appenditem '((1 11) (2 22)) '(1 33))))
  '((1 33) (2 22)))

(test:add-case 'list-assoclist-appenditem 'test-assoclist-appenditem-2
  '((lambda () (list:assoclist-appenditem '((a 1)) '(b 2))))
  '((b 2) (a 1)))

(test:add-case 'list-assoclist-appenditem 'test-assoclist-appenditem-3
  '((lambda () (list:assoclist-appenditem '((x 10) (y 20)) '(z 30))))
  '((z 30) (x 10) (y 20)))

(test:add-case 'list-assoclist-appenditem 'test-assoclist-appenditem-4
  '((lambda () (list:assoclist-appenditem nil '(k v))))
  '((k v)))

(test:run-all)