; test-p-dotpairp.lsp - p:dotpairp 函数测试
(load "src/fun/test-framework")
(load "src/p/dotpairp")

(test:suite 'p-dotpairp)

(test:add-case 'p-dotpairp 'test-nil
  '((lambda () (p:dotpairp nil)))
  nil)

(test:add-case 'p-dotpairp 'test-list
  '((lambda () (p:dotpairp '(1 2 3))))
  nil)

(test:add-case 'p-dotpairp 'test-dotpair
  '((lambda () (p:dotpairp '(1 . 2))))
  t)

(test:run-all)