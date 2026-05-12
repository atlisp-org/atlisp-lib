; test-curve-o2bulge.lsp - curve:o2bulge 函数测试
(load "src/fun/test-framework")
(load "src/curve/o2bulge")

(test:suite 'curve:o2bulge)

(test:add-case 'curve:o2bulge 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:o2bulge (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
