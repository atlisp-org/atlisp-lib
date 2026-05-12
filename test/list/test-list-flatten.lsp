; test-list-flatten.lsp - list:flatten 函数测试
(load "src/fun/test-framework")
(load "src/list/flatten")

(test:suite 'list-flatten)

(test:add-case 'list-flatten 'test-flatten-1
  '((lambda () (list:flatten '(a (b c) (d (e))))))
  '(a b c d e))

(test:add-case 'list-flatten 'test-flatten-2
  '((lambda () (list:flatten '(1 (2 (3 4) 5) 6))))
  '(1 2 3 4 5 6))

(test:add-case 'list-flatten 'test-flatten-3
  '((lambda () (list:flatten '(a b c))))
  '(a b c))

(test:add-case 'list-flatten 'test-flatten-4
  '((lambda () (list:flatten '((1 2) (3 4)))))
  '(1 2 3 4))

(test:run-all)