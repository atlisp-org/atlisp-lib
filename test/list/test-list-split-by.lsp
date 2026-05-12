; test-list-split-by.lsp - list:split-by 函数测试
(load "src/fun/test-framework")
(load "src/list/split-by")

(test:suite 'list-split-by)

(test:add-case 'list-split-by 'test-split-by-1
  '((lambda () (list:split-by '(1 2 3 4 5 6) '(lambda(x)(= 0 (rem x 2))))))
  '((2 4 6) (1 3 5)))

(test:add-case 'list-split-by 'test-split-by-2
  '((lambda () (list:split-by '(a b c d e) '(lambda(x)(member x '(a c e))))))
  '((a c e) (b d)))

(test:add-case 'list-split-by 'test-split-by-3
  '((lambda () (list:split-by '(1 2 3) '(lambda(x)(> x 10)))))
  '((1 2 3)))

(test:add-case 'list-split-by 'test-split-by-4
  '((lambda () (list:split-by '(x) '(lambda(x) t))))
  '((x) nil))

(test:run-all)