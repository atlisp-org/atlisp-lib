; test-curve-put-points.lsp - curve:put-points 函数测试
(load "src/fun/test-framework")
(load "src/curve/put-points")

(test:suite 'curve:put-points)

(test:add-case 'curve:put-points 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:put-points (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
