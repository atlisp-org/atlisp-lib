; test-list-ltrim.lsp - list:ltrim 函数测试
(load "src/fun/test-framework")
(load "src/list/ltrim")

(test:suite 'list-ltrim)

(test:add-case 'list-ltrim 'test-ltrim-1
  '((lambda () (list:ltrim '(a b c d e) 2)))
  '(c d e))

(test:add-case 'list-ltrim 'test-ltrim-2
  '((lambda () (list:ltrim '(1 2 3) 1)))
  '(2 3))

(test:add-case 'list-ltrim 'test-ltrim-3
  '((lambda () (list:ltrim '(x y) 5)))
  '(x y))

(test:add-case 'list-ltrim 'test-ltrim-4
  '((lambda () (list:ltrim '(a b c) 0)))
  '(a b c))

(test:run-all)