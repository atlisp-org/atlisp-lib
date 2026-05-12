; test-list-subst.lsp - list:subst 函数测试
(load "src/fun/test-framework")
(load "src/list/subst")

(test:suite 'list-subst)

(test:add-case 'list-subst 'test-subst-1
  '((lambda () (list:subst 0 'new '(a b c))))
  '(new b c))

(test:add-case 'list-subst 'test-subst-2
  '((lambda () (list:subst 2 'z '(a b c d))))
  '(a b z d))

(test:add-case 'list-subst 'test-subst-3
  '((lambda () (list:subst '(1) 'X '(a b c))))
  '(a X c))

(test:add-case 'list-subst 'test-subst-4
  '((lambda () (list:subst '(0 1) 'Y '((a b) (c d)))))
  '(Y (c d)))

(test:run-all)