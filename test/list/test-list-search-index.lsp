; test-list-search-index.lsp - list:search-index 函数测试
(load "src/fun/test-framework")
(load "src/list/search-index")

(test:suite 'list-search-index)

(test:add-case 'list-search-index 'test-search-index-1
  '((lambda () (list:search-index '(1 2 3 4) 3)))
  '(4))

(test:add-case 'list-search-index 'test-search-index-2
  '((lambda () (list:search-index '(a b c d e) '(0 2 4))))
  '(a c e))

(test:add-case 'list-search-index 'test-search-index-3
  '((lambda () (list:search-index '(1 2 3) 10)))
  nil)

(test:add-case 'list-search-index 'test-search-index-4
  '((lambda () (list:search-index '(x y z) 0)))
  '(x))

(test:run-all)