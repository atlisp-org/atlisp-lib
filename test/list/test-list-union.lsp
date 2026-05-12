; test-list-union.lsp - list:union 函数测试
(load "src/fun/test-framework")
(load "src/list/union")

(test:suite 'list-union)

(test:add-case 'list-union 'test-union-1
  '((lambda () (list:union '(1 2 3) '(3 4 5))))
  '(1 2 3 4 5))

(test:add-case 'list-union 'test-union-2
  '((lambda () (list:union '(a b c) '(d e f))))
  '(a b c d e f))

(test:add-case 'list-union 'test-union-3
  '((lambda () (list:union '(1 2) '(1 2 3))))
  '(1 2 3))

(test:add-case 'list-union 'test-union-4
  '((lambda () (list:union nil '(a b))))
  '(a b))

(test:run-all)