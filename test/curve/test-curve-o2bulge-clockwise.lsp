; test-curve-o2bulge-clockwise.lsp - curve:o2bulge-clockwise 函数测试
(load "src/fun/test-framework")
(load "src/curve/o2bulge-clockwise")

(test:suite 'curve:o2bulge-clockwise)

(test:add-case 'curve:o2bulge-clockwise 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:o2bulge-clockwise (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
