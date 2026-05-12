; test-list-exist.lsp - list:exist 函数测试
(load "src/fun/test-framework")
(load "src/list/exist")

(test:suite 'list-exist)

(test:add-case 'list-exist 'test-exist-1
  '((lambda () (list:exist '(1 2 3 4) 3)))
  t)

(test:add-case 'list-exist 'test-exist-2
  '((lambda () (list:exist '(a b c d) 'e)))
  nil)

(test:add-case 'list-exist 'test-exist-3
  '((lambda () (list:exist '(1 (2 3) 4) '(2 3))))
  t)

(test:add-case 'list-exist 'test-exist-4
  '((lambda () (list:exist '(x y z) 'x)))
  t)

(test:run-all)