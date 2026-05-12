; test-list-member.lsp - list:member 函数测试
(load "src/fun/test-framework")
(load "src/list/member")

(test:suite 'list-member)

(test:add-case 'list-member 'test-member-1
  '((lambda () (list:member 5.0 '(1 2 5.0 3) 0.001)))
  '(5.0 3))

(test:add-case 'list-member 'test-member-2
  '((lambda () (list:member 'a '(b c a d) 0)))
  '(a d))

(test:add-case 'list-member 'test-member-3
  '((lambda () (list:member 10 '(1 2 3) 0)))
  nil)

(test:add-case 'list-member 'test-member-4
  '((lambda () (list:member 1.001 '(1.0 2.0) 0.01)))
  '(1.0 2.0))

(test:run-all)