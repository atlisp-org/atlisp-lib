; test-p-stringp.lsp - p:stringp 函数测试
(load "src/fun/test-framework")
(load "src/p/stringp")

(test:suite 'p-stringp)

(test:add-case 'p-stringp 'test-nil
  '((lambda () (p:stringp nil)))
  nil)

(test:add-case 'p-stringp 'test-str
  '((lambda () (p:stringp "test")))
  t)

(test:add-case 'p-stringp 'test-int
  '((lambda () (p:stringp 123)))
  nil)

(test:run-all)