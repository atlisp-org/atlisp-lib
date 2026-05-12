; test-list-.lsp - list:- 函数测试
(load "src/fun/test-framework")
(load "src/list/-")

(test:suite 'list--)

(test:add-case 'list-- 'test---1
  '((lambda () (list:- '(5 6 7) '(1 2 3))))
  '(4 4 4))

(test:add-case 'list-- 'test---2
  '((lambda () (list:- '(10 20) '(5 5))))
  '(5 15))

(test:add-case 'list-- 'test---3
  '((lambda () (list:- '(3 2 1) '(1 2 3))))
  '(2 0 -2))

(test:add-case 'list-- 'test---4
  '((lambda () (list:- '(100) '(50))))
  '(50))

(test:run-all)