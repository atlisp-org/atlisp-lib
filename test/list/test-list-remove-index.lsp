; test-list-remove-index.lsp - list:remove-index 函数测试
(load "src/fun/test-framework")
(load "src/list/remove-index")

(test:suite 'list-remove-index)

(test:add-case 'list-remove-index 'test-remove-index-1
  '((lambda () (list:remove-index '(0 1 2 3) 1)))
  '(0 2 3))

(test:add-case 'list-remove-index 'test-remove-index-2
  '((lambda () (list:remove-index '(a b c d) 0)))
  '(b c d))

(test:add-case 'list-remove-index 'test-remove-index-3
  '((lambda () (list:remove-index '(1 2 3) 3)))
  '(1 2 3))

(test:add-case 'list-remove-index 'test-remove-index-4
  '((lambda () (list:remove-index '(x y z) 2)))
  '(x y))

(test:run-all)