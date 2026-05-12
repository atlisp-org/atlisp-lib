; test-m-union.lsp - m:union 函数测试
(load "src/fun/test-framework")
(load "src/m/union")

(test:suite 'm-union)

(test:add-case 'm-union 'test-12-23
  '((lambda () (m:union '(1 2) '(2 3))))
  '(1 2 3))

(test:add-case 'm-union 'test-empty
  '((lambda () (m:union '(1 2 3) nil)))
  '(1 2 3))

(test:add-case 'm-union 'test-duplicate
  '((lambda () (m:union '(1 1 2) '(2 3))))
  '(1 1 2 3))

(test:run-all)