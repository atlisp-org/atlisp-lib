; test-p-vlap.lsp - p:vlap 函数测试
(load "src/fun/test-framework")
(load "src/p/vlap")

(test:suite 'p-vlap)

(test:add-case 'p-vlap 'test-nil
  '((lambda () (p:vlap nil)))
  nil)

(test:add-case 'p-vlap 'test-int
  '((lambda () (p:vlap 123)))
  nil)

(test:run-all)