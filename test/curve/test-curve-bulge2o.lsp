; test-curve-bulge2o.lsp - curve:bulge2o 函数测试
(load "src/fun/test-framework")
(load "src/curve/bulge2o")

(test:suite 'curve:bulge2o)

(test:add-case 'curve:bulge2o 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:bulge2o (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
