; test-list-split-index.lsp - list:split-index 函数测试
(load "src/fun/test-framework")
(load "src/list/split-index")

(test:suite 'list-split-index)

(test:add-case 'list-split-index 'test-split-index-1
  '((lambda () (list:split-index '(1 2 3 4) 2)))
  '((1 2) (3 4)))

(test:add-case 'list-split-index 'test-split-index-2
  '((lambda () (list:split-index '(a b c d e) 0)))
  '(nil (a b c d e)))

(test:add-case 'list-split-index 'test-split-index-3
  '((lambda () (list:split-index '(x y z) 3)))
  '((x y z) nil))

(test:add-case 'list-split-index 'test-split-index-4
  '((lambda () (list:split-index '(1 2 3 4 5) 1)))
  '((1) (2 3 4 5)))

(test:run-all)