; test-curve-subsegment-parameter.lsp - curve:subsegment-parameter 函数测试
(load "src/fun/test-framework")
(load "src/curve/subsegment-parameter")

(test:suite 'curve:subsegment-parameter)

(test:add-case 'curve:subsegment-parameter 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:subsegment-parameter (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
