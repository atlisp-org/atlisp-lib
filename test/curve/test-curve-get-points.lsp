; test-curve-get-points.lsp - curve:get-points 函数测试
(load "src/fun/test-framework")
(load "src/curve/get-points")

(test:suite 'curve:get-points)

(test:add-case 'curve:get-points 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:get-points (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
