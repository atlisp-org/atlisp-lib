; test-curve-3pt2bulge.lsp - curve:3pt2bulge 函数测试
(load "src/fun/test-framework")
(load "src/curve/3pt2bulge")

(test:suite 'curve:3pt2bulge)

(test:add-case 'curve:3pt2bulge 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:3pt2bulge (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
