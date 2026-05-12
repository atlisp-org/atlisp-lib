; test-list-fill.lsp - list:fill 函数测试
(load "src/fun/test-framework")
(load "src/list/fill")

(test:suite 'list-fill)

(test:add-case 'list-fill 'test-fill-1
  '((lambda () (list:fill '(a b) 4 'c)))
  '(a b c c))

(test:add-case 'list-fill 'test-fill-2
  '((lambda () (list:fill '(1 2 3) 5 0)))
  '(1 2 3 0 0))

(test:add-case 'list-fill 'test-fill-3
  '((lambda () (list:fill '(x y z) 3 'a)))
  '(x y z))

(test:add-case 'list-fill 'test-fill-4
  '((lambda () (list:fill nil 2 'z)))
  nil)

(test:run-all)