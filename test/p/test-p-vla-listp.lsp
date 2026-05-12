; test-p-vla-listp.lsp - p:vla-listp 函数测试
(load "src/fun/test-framework")
(load "src/p/vla-listp")

(test:suite 'p-vla-listp)

(test:add-case 'p-vla-listp 'test-nil
  '((lambda () (p:vla-listp nil)))
  nil)

(test:add-case 'p-vla-listp 'test-empty-list
  '((lambda () (p:vla-listp '())))
  nil)

(test:add-case 'p-vla-listp 'test-int-list
  '((lambda () (p:vla-listp '(1 2 3))))
  nil)

(test:run-all)