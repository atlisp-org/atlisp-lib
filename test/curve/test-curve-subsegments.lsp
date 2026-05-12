; test-curve-subsegments.lsp - curve:subsegments 函数测试
(load "src/fun/test-framework")
(load "src/curve/subsegments")

(test:suite 'curve:subsegments)

(test:add-case 'curve:subsegments 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:subsegments (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
