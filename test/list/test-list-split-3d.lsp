; test-list-split-3d.lsp - list:split-3d 函数测试
(load "src/fun/test-framework")
(load "src/list/split-3d")

(test:suite 'list-split-3d)

(test:add-case 'list-split-3d 'test-split-3d-1
  '((lambda () (list:split-3d '(1 2 3 4 5 6))))
  '((1 2 3) (4 5 6)))

(test:add-case 'list-split-3d 'test-split-3d-2
  '((lambda () (list:split-3d '(1 2 3 4))))
  '((1 2 3) (4 nil nil)))

(test:add-case 'list-split-3d 'test-split-3d-3
  '((lambda () (list:split-3d '(a b c))))
  '((a b c)))

(test:add-case 'list-split-3d 'test-split-3d-4
  '((lambda () (list:split-3d '(1 2))))
  '((1 2 nil)))

(test:run-all)