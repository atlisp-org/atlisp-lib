; test-list-indot2list.lsp - list:indot->list 函数测试
(load "src/fun/test-framework")
(load "src/list/indot2list")

(test:suite 'list-indot->list)

(test:add-case 'list-indot->list 'test-indot->list-1
  '((lambda () (list:indot->list '((a . b) (c . d)))))
  '((a b) (c d)))

(test:add-case 'list-indot->list 'test-indot->list-2
  '((lambda () (list:indot->list '((x . 1) y (z . 2)))))
  '((x 1) y (z 2)))

(test:add-case 'list-indot->list 'test-indot->list-3
  '((lambda () (list:indot->list '(a b c))))
  '(a b c))

(test:add-case 'list-indot->list 'test-indot->list-4
  '((lambda () (list:indot->list nil)))
  nil)

(test:run-all)