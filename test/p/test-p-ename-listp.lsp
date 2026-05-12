; test-p-ename-listp.lsp - p:ename-listp 函数测试
(load "src/fun/test-framework")
(load "src/p/ename-listp")

(test:suite 'p-ename-listp)

(test:add-case 'p-ename-listp 'test-nil
  '((lambda () (p:ename-listp nil)))
  nil)

(test:add-case 'p-ename-listp 'test-empty-list
  '((lambda () (p:ename-listp '())))
  nil)

(test:add-case 'p-ename-listp 'test-int-list
  '((lambda () (p:ename-listp '(1 2 3))))
  nil)

(test:run-all)