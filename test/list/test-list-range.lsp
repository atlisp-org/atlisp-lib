; test-list-range.lsp - list:range 函数测试
(load "src/fun/test-framework")
(load "src/list/range")

(test:suite 'list-range)

(test:add-case 'list-range 'test-range-1
  '((lambda () (list:range 1 4 1)))
  '(1 2 3 4))

(test:add-case 'list-range 'test-range-2
  '((lambda () (list:range 0 6 2)))
  '(0 2 4 6))

(test:add-case 'list-range 'test-range-3
  '((lambda () (list:range 5 1 -1)))
  '(5 4 3 2 1))

(test:add-case 'list-range 'test-range-4
  '((lambda () (list:range 10 5 1)))
  nil)

(test:run-all)