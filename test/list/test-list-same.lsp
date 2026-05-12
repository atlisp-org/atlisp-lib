; test-list-same.lsp - list:same 函数测试
(load "src/fun/test-framework")
(load "src/list/same")

(test:suite 'list-same)

(test:add-case 'list-same 'test-same-1
  '((lambda () (list:same '(1 2 3 4 3 2))))
  '(2 3))

(test:add-case 'list-same 'test-same-2
  '((lambda () (list:same '(a b c a b))))
  '(a b))

(test:add-case 'list-same 'test-same-3
  '((lambda () (list:same '(1 2 3 4 5))))
  nil)

(test:add-case 'list-same 'test-same-4
  '((lambda () (list:same '(x x x y))))
  '(x))

(test:run-all)