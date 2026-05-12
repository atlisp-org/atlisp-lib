; test-curve-subsegment-length.lsp - curve:subsegment-length 函数测试
(load "src/fun/test-framework")
(load "src/curve/subsegment-length")

(test:suite 'curve:subsegment-length)

(test:add-case 'curve:subsegment-length 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:subsegment-length (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
