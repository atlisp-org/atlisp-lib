; test-curve-3pt2bulge-plus.lsp - curve:3pt2bulge-plus 函数测试
(load "src/fun/test-framework")
(load "src/curve/3pt2bulge-plus")

(test:suite 'curve:3pt2bulge-plus)

(test:add-case 'curve:3pt2bulge-plus 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:3pt2bulge-plus (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
