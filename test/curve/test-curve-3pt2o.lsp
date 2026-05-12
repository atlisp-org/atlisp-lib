; test-curve-3pt2o.lsp - curve:3pt2o 函数测试
(load "src/fun/test-framework")
(load "src/curve/3pt2o")

(test:suite 'curve:3pt2o)

(test:add-case 'curve:3pt2o 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:3pt2o (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
