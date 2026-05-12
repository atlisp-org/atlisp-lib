; test-p-functionp.lsp - p:functionp 函数测试
(load "src/fun/test-framework")
(load "src/p/functionp")

(test:suite 'p-functionp)

(test:add-case 'p-functionp 'test-nil
  '((lambda () (p:functionp nil)))
  nil)

(test:add-case 'p-functionp 'test-builtin
  '((lambda () (p:functionp 'boole)))
  t)

(test:add-case 'p-functionp 'test-user
  '((lambda () (p:functionp 'test)))
  nil)

(test:run-all)