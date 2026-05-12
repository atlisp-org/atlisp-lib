; test-p-string-listp.lsp - p:string-listp 函数测试
(load "src/fun/test-framework")
(load "src/p/string-listp")

(test:suite 'p-string-listp)

(test:add-case 'p-string-listp 'test-nil
  '((lambda () (p:string-listp nil)))
  nil)

(test:add-case 'p-string-listp 'test-empty-list
  '((lambda () (p:string-listp '())))
  nil)

(test:add-case 'p-string-listp 'test-string-list
  '((lambda () (p:string-listp '("a" "b" "c"))))
  t)

(test:add-case 'p-string-listp 'test-int-list
  '((lambda () (p:string-listp '(1 2 3))))
  nil)

(test:run-all)