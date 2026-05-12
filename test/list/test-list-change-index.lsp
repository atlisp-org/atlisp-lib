; test-list-change-index.lsp - list:change-index 函数测试
(load "src/fun/test-framework")
(load "src/list/change-index")
(load "src/list/replace-index")

(test:suite 'list-change-index)

(test:add-case 'list-change-index 'test-change-index-1
  '((lambda () (list:change-index '(a b c d) 0 2)))
  '(c b a d))

(test:add-case 'list-change-index 'test-change-index-2
  '((lambda () (list:change-index '(1 2 3 4) 1 3)))
  '(1 4 3 2))

(test:add-case 'list-change-index 'test-change-index-3
  '((lambda () (list:change-index '(x y) 0 1)))
  '(y x))

(test:add-case 'list-change-index 'test-change-index-4
  '((lambda () (list:change-index '(a b c) 0 0)))
  '(a b c))

(test:run-all)