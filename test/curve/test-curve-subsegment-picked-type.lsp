; test-curve-subsegment-picked-type.lsp - curve:subsegment-picked-type 函数测试
(load "src/fun/test-framework")
(load "src/curve/subsegment-picked-type")

(test:suite 'curve:subsegment-picked-type)

(test:add-case 'curve:subsegment-picked-type 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:subsegment-picked-type (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
