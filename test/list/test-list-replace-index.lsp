; test-list-replace-index.lsp - list:replace-index 函数测试
(load "src/fun/test-framework")
(load "src/list/replace-index")

(test:suite 'list-replace-index)

(test:add-case 'list-replace-index 'test-replace-index-1
  '((lambda () (list:replace-index '(0 1 2 3) 1 5)))
  '(0 5 2 3))

(test:add-case 'list-replace-index 'test-replace-index-2
  '((lambda () (list:replace-index '(a b c d) 0 'x)))
  '(x b c d))

(test:add-case 'list-replace-index 'test-replace-index-3
  '((lambda () (list:replace-index '(1 2 3) 2 9)))
  '(1 2 9))

(test:add-case 'list-replace-index 'test-replace-index-4
  '((lambda () (list:replace-index '(x y z) 3 'w)))
  '(x y z))

(test:run-all)