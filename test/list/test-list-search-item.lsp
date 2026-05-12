; test-list-search-item.lsp - list:search-item 函数测试
(load "src/fun/test-framework")
(load "src/list/search-item")

(test:suite 'list-search-item)

(test:add-case 'list-search-item 'test-search-item-1
  '((lambda () (list:search-item '(1 2 3 4) 3)))
  '(2))

(test:add-case 'list-search-item 'test-search-item-2
  '((lambda () (list:search-item '(a b a c a) 'a)))
  '(0 2 4))

(test:add-case 'list-search-item 'test-search-item-3
  '((lambda () (list:search-item '(1 2 3 4 5) 6)))
  nil)

(test:add-case 'list-search-item 'test-search-item-4
  '((lambda () (list:search-item '(x y z y) 'y)))
  '(1 3))

(test:run-all)