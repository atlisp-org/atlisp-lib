; test-list-get-ubound.lsp - list:get-ubound 函数测试
(load "src/fun/test-framework")
(load "src/list/get-ubound")

(test:suite 'list-get-ubound)

(test:add-case 'list-get-ubound 'test-get-ubound-1
  '((lambda () (list:get-ubound '(1 2 3))))
  '(3 0 0))

(test:add-case 'list-get-ubound 'test-get-ubound-2
  '((lambda () (list:get-ubound '((1 2) (3 4)))))
  '(2 2 0))

(test:add-case 'list-get-ubound 'test-get-ubound-3
  '((lambda () (list:get-ubound '(((a b) (c d)) ((e f) (g h))))))
  '(2 2 2))

(test:add-case 'list-get-ubound 'test-get-ubound-4
  '((lambda () (list:get-ubound 5)))
  '(0 0 0))

(test:run-all)