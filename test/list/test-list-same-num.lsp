; test-list-same-num.lsp - list:same-num 函数测试
(load "src/fun/test-framework")
(load "src/list/same-num")

(test:suite 'list-same-num)

(test:add-case 'list-same-num 'test-same-num-1
  '((lambda () (list:same-num '(a b a c a b))))
  '((a 3) (b 2)))

(test:add-case 'list-same-num 'test-same-num-2
  '((lambda () (list:same-num '(1 2 3 4 5))))
  nil)

(test:add-case 'list-same-num 'test-same-num-3
  '((lambda () (list:same-num '(x x x y y))))
  '((x 3) (y 2)))

(test:add-case 'list-same-num 'test-same-num-4
  '((lambda () (list:same-num nil)))
  nil)

(test:run-all)