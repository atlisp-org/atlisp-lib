; test-list-assoclist-values.lsp - list:assoclist-values 函数测试
(load "src/fun/test-framework")
(load "src/list/assoclist-values")

(test:suite 'list-assoclist-values)

(test:add-case 'list-assoclist-values 'test-assoclist-values-1
  '((lambda () (list:assoclist-values '((1 11) (2 22) (3 33)))))
  '((11) (22) (33)))

(test:add-case 'list-assoclist-values 'test-assoclist-values-2
  '((lambda () (list:assoclist-values '((a 1) (b 2) (c 3)))))
  '((1) (2) (3)))

(test:add-case 'list-assoclist-values 'test-assoclist-values-3
  '((lambda () (list:assoclist-values nil)))
  nil)

(test:add-case 'list-assoclist-values 'test-assoclist-values-4
  '((lambda () (list:assoclist-values '((x 10) (y 20)))))
  '((10) (20)))

(test:run-all)