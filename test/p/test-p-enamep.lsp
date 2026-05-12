; test-p-enamep.lsp - p:enamep 函数测试
(load "src/fun/test-framework")
(load "src/p/enamep")

(test:suite 'p-enamep)

(test:add-case 'p-enamep 'test-nil
  '((lambda () (p:enamep nil)))
  nil)

(test:add-case 'p-enamep 'test-int
  '((lambda () (p:enamep 123)))
  nil)

(test:run-all)