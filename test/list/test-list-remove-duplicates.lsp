; test-list-remove-duplicates.lsp - list:remove-duplicates 函数测试
(load "src/fun/test-framework")
(load "src/list/remove-duplicates")

(test:suite 'list-remove-duplicates)

(test:add-case 'list-remove-duplicates 'test-remove-duplicates-1
  '((lambda () (list:remove-duplicates '(1 2 3 2 4 1))))
  '(1 2 3 4))

(test:add-case 'list-remove-duplicates 'test-remove-duplicates-2
  '((lambda () (list:remove-duplicates '(a b a c b))))
  '(a b c))

(test:add-case 'list-remove-duplicates 'test-remove-duplicates-3
  '((lambda () (list:remove-duplicates '(1 2 3 4 5))))
  '(1 2 3 4 5))

(test:add-case 'list-remove-duplicates 'test-remove-duplicates-4
  '((lambda () (list:remove-duplicates nil)))
  nil)

(test:run-all)