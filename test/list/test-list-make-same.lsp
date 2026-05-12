; test-list-make-same.lsp - list:make-same 函数测试
(load "src/fun/test-framework")
(load "src/list/make-same")

(test:suite 'list-make-same)

(test:add-case 'list-make-same 'test-make-same-1
  '((lambda () (list:make-same 'a 5)))
  '(a a a a a))

(test:add-case 'list-make-same 'test-make-same-2
  '((lambda () (list:make-same 1 3)))
  '(1 1 1))

(test:add-case 'list-make-same 'test-make-same-3
  '((lambda () (list:make-same 'x 0)))
  nil)

(test:add-case 'list-make-same 'test-make-same-4
  '((lambda () (list:make-same 'z 2)))
  '(z z))

(test:run-all)