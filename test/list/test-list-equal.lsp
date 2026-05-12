; test-list-equal.lsp - list:equal 函数测试
(load "src/fun/test-framework")
(load "src/list/equal")

(test:suite 'list-equal)

(test:add-case 'list-equal 'test-equal-1
  '((lambda () (list:equal 5.3 5.3 0.01)))
  t)

(test:add-case 'list-equal 'test-equal-2
  '((lambda () (list:equal '(1 2 3) '(1 2 3) 0.001)))
  t)

(test:add-case 'list-equal 'test-equal-3
  '((lambda () (list:equal '(1 2) '(1 2 3) 0.001)))
  nil)

(test:add-case 'list-equal 'test-equal-4
  '((lambda () (list:equal '(1.0 2.0) '(1.001 2.002) 0.01)))
  t)

(test:run-all)