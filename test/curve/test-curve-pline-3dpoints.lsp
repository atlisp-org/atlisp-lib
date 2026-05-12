; test-curve-pline-3dpoints.lsp - curve:pline-3dpoints 函数测试
(load "src/fun/test-framework")
(load "src/curve/pline-3dpoints")

(test:suite 'curve:pline-3dpoints)

(test:add-case 'curve:pline-3dpoints 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:pline-3dpoints (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
