; test-curve-subsegment-points.lsp - curve:subsegment-points 函数测试
(load "src/fun/test-framework")
(load "src/curve/subsegment-points")

(test:suite 'curve:subsegment-points)

(test:add-case 'curve:subsegment-points 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:subsegment-points (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
