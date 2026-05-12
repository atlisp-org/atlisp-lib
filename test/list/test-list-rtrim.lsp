; test-list-rtrim.lsp - list:rtrim 函数测试
(load "src/fun/test-framework")
(load "src/list/rtrim")

(test:suite 'list-rtrim)

(test:add-case 'list-rtrim 'test-rtrim-1
  '((lambda () (list:rtrim '(a b c d e) 2)))
  '(a b c))

(test:add-case 'list-rtrim 'test-rtrim-2
  '((lambda () (list:rtrim '(1 2 3) 1)))
  '(1 2))

(test:add-case 'list-rtrim 'test-rtrim-3
  '((lambda () (list:rtrim '(x y) 5)))
  nil)

(test:add-case 'list-rtrim 'test-rtrim-4
  '((lambda () (list:rtrim '(a b c) 0)))
  '(a b c))

(test:run-all)