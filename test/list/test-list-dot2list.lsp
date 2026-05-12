; test-list-dot2list.lsp - list:dot->list 函数测试
(load "src/fun/test-framework")
(load "src/list/dot2list")

(test:suite 'list-dot->list)

(test:add-case 'list-dot->list 'test-dot->list-1
  '((lambda () (list:dot->list '(1 2 3 . 4))))
  '(1 2 3 4))

(test:add-case 'list-dot->list 'test-dot->list-2
  '((lambda () (list:dot->list '(a b . c))))
  '(a b c))

(test:add-case 'list-dot->list 'test-dot->list-3
  '((lambda () (list:dot->list '(1 2 3))))
  '(1 2 3))

(test:add-case 'list-dot->list 'test-dot->list-4
  '((lambda () (list:dot->list 5)))
  '(5))

(test:run-all)