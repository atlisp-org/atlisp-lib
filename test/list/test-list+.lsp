; test-list+.lsp - list:+ 函数测试
(load "src/fun/test-framework")
(load "src/list/+")

(test:suite 'list-+)

(test:add-case 'list-+ 'test-+-1
  '((lambda () (list:+ '(1 2) '(3 4))))
  '(4 6))

(test:add-case 'list-+ 'test-+-2
  '((lambda () (list:+ '(10 20 30) '(1 2))))
  '(11 22))

(test:add-case 'list-+ 'test-+-3
  '((lambda () (list:+ '(5.0 6.0) '(1.5 2.5))))
  '(6.5 8.5))

(test:add-case 'list-+ 'test-+-4
  '((lambda () (list:+ '(0) '(10))))
  '(10))

(test:run-all)