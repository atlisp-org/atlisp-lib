; test-list-sublist.lsp - list:sublist 函数测试
(load "src/fun/test-framework")
(load "src/list/sublist")

(test:suite 'list-sublist)

(test:add-case 'list-sublist 'test-sublist-1
  '((lambda () (list:sublist '(1 2 3 4 5) 1 3)))
  '(2 3 4))

(test:add-case 'list-sublist 'test-sublist-2
  '((lambda () (list:sublist '(a b c d e) 0 2)))
  '(a b))

(test:add-case 'list-sublist 'test-sublist-3
  '((lambda () (list:sublist '(1 2 3) 2 5)))
  '(3))

(test:add-case 'list-sublist 'test-sublist-4
  '((lambda () (list:sublist '(x y z) 1)))
  '(y z))

(test:run-all)