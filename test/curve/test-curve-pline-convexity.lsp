; test-curve-pline-convexity.lsp - curve:pline-convexity 函数测试
(load "src/fun/test-framework")
(load "src/curve/pline-convexity")

(test:suite 'curve:pline-convexity)

(test:add-case 'curve:pline-convexity 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:pline-convexity (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
