; test-curve-inters.lsp - curve:inters 函数测试
(load "src/fun/test-framework")
(load "src/curve/inters")

(test:suite 'curve:inters)

(test:add-case 'curve:inters 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:inters (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
