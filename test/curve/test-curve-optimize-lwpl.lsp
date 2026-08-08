; test-curve-optimize-lwpl.lsp - curve:optimize-lwpl 函数测试
(load "src/fun/test-framework")
(load "src/curve/lwpl-turn")
(load "src/curve/lwpl-cocircle-bulge")
(load "src/curve/optimize-lwpl-cocircle")
(load "src/curve/optimize-lwpl-cocircle-all")
(load "src/curve/optimize-lwpl")

(test:suite 'curve:optimize-lwpl)

(test:add-case 'curve:optimize-lwpl 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:optimize-lwpl (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
