; test-list-rm-m2n.lsp - list:rm-m2n 函数测试
(load "src/fun/test-framework")
(load "src/list/rm-m2n")

(test:suite 'list-rm-m2n)

(test:add-case 'list-rm-m2n 'test-rm-m2n-1
  '((lambda () (list:rm-m2n '(1 2 3 4 5 6) 1 3)))
  '(1 5 6))

(test:add-case 'list-rm-m2n 'test-rm-m2n-2
  '((lambda () (list:rm-m2n '(a b c d) 0 1)))
  '(c d))

(test:add-case 'list-rm-m2n 'test-rm-m2n-3
  '((lambda () (list:rm-m2n '(1 2 3) 0 10)))
  nil)

(test:add-case 'list-rm-m2n 'test-rm-m2n-4
  '((lambda () (list:rm-m2n '(1 2 3 4) -1 2)))
  '(4))

(test:run-all)