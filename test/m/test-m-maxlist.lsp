; test-m-maxlist.lsp - m:maxlist 函数测试
(load "src/fun/test-framework")
(load "src/m/maxlist")

(test:suite 'm-maxlist)

(test:add-case 'm-maxlist 'test-list
  '((lambda () (m:maxlist '(1 5 3 9 2))))
  9)

(test:add-case 'm-maxlist 'test-single
  '((lambda () (m:maxlist 5)))
  5)

(test:add-case 'm-maxlist 'test-negative
  '((lambda () (m:maxlist '(-1 -5 -3))))
  -1)

(test:add-case 'm-maxlist 'test-decimal
  '((lambda () (m:maxlist '(1.5 2.5 0.5))))
  2.5)

(test:run-all)