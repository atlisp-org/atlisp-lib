; test-list-assoclist-index.lsp - list:assoclist-index 函数测试
(load "src/fun/test-framework")
(load "src/list/assoclist-index")

(test:suite 'list-assoclist-index)

(test:add-case 'list-assoclist-index 'test-assoclist-index-1
  '((lambda () (list:assoclist-index '((1 11) (2 22) (3 33) (4 44)) 3)))
  2)

(test:add-case 'list-assoclist-index 'test-assoclist-index-2
  '((lambda () (list:assoclist-index '((a 1) (b 2) (c 3)) 'a)))
  0)

(test:add-case 'list-assoclist-index 'test-assoclist-index-3
  '((lambda () (list:assoclist-index '((x 10) (y 20)) 5)))
  nil)

(test:add-case 'list-assoclist-index 'test-assoclist-index-4
  '((lambda () (list:assoclist-index '((1 1)) 1)))
  0)

(test:run-all)