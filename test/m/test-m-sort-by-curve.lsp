; test-m-sort-by-curve.lsp - m:sort-by-curve 函数测试
(load "src/fun/test-framework")
(load "src/m/sort-by-curve")

(test:suite 'm-sort-by-curve)

(test:add-case 'm-sort-by-curve 'test-basic
  '((lambda () (m:sort-by-curve nil '( (0 0) (10 0) (5 5)))))
  nil)

(test:run-all)