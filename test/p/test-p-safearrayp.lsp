; test-p-safearrayp.lsp - p:safearrayp 函数测试
(load "src/fun/test-framework")
(load "src/p/safearrayp")

(test:suite 'p-safearrayp)

(test:add-case 'p-safearrayp 'test-nil
  '((lambda () (p:safearrayp nil)))
  nil)

(test:add-case 'p-safearrayp 'test-int
  '((lambda () (p:safearrayp 123)))
  nil)

(test:run-all)