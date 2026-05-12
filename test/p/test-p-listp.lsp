; test-p-listp.lsp - p:listp 函数测试
(load "src/fun/test-framework")
(load "src/p/listp")

(test:suite 'p-listp)

(test:add-case 'p-listp 'test-nil
  '((lambda () (p:listp nil)))
  nil)

(test:add-case 'p-listp 'test-list
  '((lambda () (p:listp '(1 2 3))))
  t)

(test:add-case 'p-listp 'test-dotpair
  '((lambda () (p:listp '(1 . 2))))
  nil)

(test:add-case 'p-listp 'test-int
  '((lambda () (p:listp 123)))
  nil)

(test:run-all)