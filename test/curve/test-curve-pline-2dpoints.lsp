; test-curve-pline-2dpoints.lsp - curve:pline-2dpoints 函数测试
(load "src/fun/test-framework")
(load "src/curve/pline-2dpoints")

(test:suite 'curve:pline-2dpoints)

(test:add-case 'curve:pline-2dpoints 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:pline-2dpoints (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
