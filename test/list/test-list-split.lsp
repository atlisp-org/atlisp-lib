; test-list-split.lsp - list:split 函数测试
(load "src/fun/test-framework")
(load "src/list/split")

(test:suite 'list-split)

(test:add-case 'list-split 'test-split-1
  '((lambda () (list:split '(1 2 3 4 5 6) 3)))
  '((1 2 3) (4 5 6)))

(test:add-case 'list-split 'test-split-2
  '((lambda () (list:split '(1 2 3 4 5) 2)))
  '((1 2) (3 4) (5)))

(test:add-case 'list-split 'test-split-3
  '((lambda () (list:split '(a b c d e f g) 3)))
  '((a b c) (d e f) (g)))

(test:add-case 'list-split 'test-split-4
  '((lambda () (list:split '(1 2) 3)))
  '((1 2)))

(test:run-all)