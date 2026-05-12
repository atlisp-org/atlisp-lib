; test-list-split-2d.lsp - list:split-2d 函数测试
(load "src/fun/test-framework")
(load "src/list/split-2d")

(test:suite 'list-split-2d)

(test:add-case 'list-split-2d 'test-split-2d-1
  '((lambda () (list:split-2d '(1 2 3 4 5 6))))
  '((1 2) (3 4) (5 6)))

(test:add-case 'list-split-2d 'test-split-2d-2
  '((lambda () (list:split-2d '(a b c d))))
  '((a b) (c d)))

(test:add-case 'list-split-2d 'test-split-2d-3
  '((lambda () (list:split-2d '(x y z))))
  '((x y) (z nil)))

(test:add-case 'list-split-2d 'test-split-2d-4
  '((lambda () (list:split-2d '(1))))
  '((1 nil)))

(test:run-all)