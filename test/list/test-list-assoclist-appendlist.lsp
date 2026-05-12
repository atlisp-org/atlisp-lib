; test-list-assoclist-appendlist.lsp - list:assoclist-appendlist 函数测试
(load "src/fun/test-framework")
(load "src/list/assoclist-appendlist")

(test:suite 'list-assoclist-appendlist)

(test:add-case 'list-assoclist-appendlist 'test-assoclist-appendlist-1
  '((lambda () (list:assoclist-appendlist '((1 11) (2 22)) '((3 33) (4 44)))))
  '((4 44) (3 33) (1 11) (2 22)))

(test:add-case 'list-assoclist-appendlist 'test-assoclist-appendlist-2
  '((lambda () (list:assoclist-appendlist '((a 1)) '((b 2)))))
  '((b 2) (a 1)))

(test:add-case 'list-assoclist-appendlist 'test-assoclist-appendlist-3
  '((lambda () (list:assoclist-appendlist nil '((1 1)))))
  '((1 1)))

(test:add-case 'list-assoclist-appendlist 'test-assoclist-appendlist-4
  '((lambda () (list:assoclist-appendlist '((x 10)) '((y 20) (z 30)))))
  '((z 30) (y 20) (x 10)))

(test:run-all)