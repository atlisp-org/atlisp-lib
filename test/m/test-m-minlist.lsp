; test-m-minlist.lsp - m:minlist 函数测试
(load "src/fun/test-framework")
(load "src/m/minlist")

(test:suite 'm-minlist)

(test:add-case 'm-minlist 'test-list
  '((lambda () (m:minlist '(1 5 3 9 2))))
  1)

(test:add-case 'm-minlist 'test-single
  '((lambda () (m:minlist 5)))
  5)

(test:add-case 'm-minlist 'test-negative
  '((lambda () (m:minlist '(-1 -5 -3))))
  -5)

(test:add-case 'm-minlist 'test-decimal
  '((lambda () (m:minlist '(1.5 2.5 0.5))))
  0.5)

(test:run-all)