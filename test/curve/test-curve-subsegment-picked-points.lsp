; test-curve-subsegment-picked-points.lsp - curve:subsegment-picked-points 函数测试
(load "src/fun/test-framework")
(load "src/curve/subsegment-picked-points")

(test:suite 'curve:subsegment-picked-points)

(test:add-case 'curve:subsegment-picked-points 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:subsegment-picked-points (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
