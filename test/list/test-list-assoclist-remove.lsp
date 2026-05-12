; test-list-assoclist-remove.lsp - list:assoclist-remove 函数测试
(load "src/fun/test-framework")
(load "src/list/assoclist-remove")

(test:suite 'list-assoclist-remove)

(test:add-case 'list-assoclist-remove 'test-assoclist-remove-1
  '((lambda () (list:assoclist-remove '((1 11) (2 22) (3 33) (4 44)) 2)))
  '((1 11) (3 33) (4 44)))

(test:add-case 'list-assoclist-remove 'test-assoclist-remove-2
  '((lambda () (list:assoclist-remove '((a 1) (b 2) (c 3)) 'a)))
  '((b 2) (c 3)))

(test:add-case 'list-assoclist-remove 'test-assoclist-remove-3
  '((lambda () (list:assoclist-remove '((x 10) (y 20)) 5)))
  '((x 10) (y 20)))

(test:add-case 'list-assoclist-remove 'test-assoclist-remove-4
  '((lambda () (list:assoclist-remove '((1 1)) 1)))
  nil)

(test:run-all)