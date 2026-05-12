; test-curve-subsegment-picked-param.lsp - curve:subsegment-picked-param 函数测试
(load "src/fun/test-framework")
(load "src/curve/subsegment-picked-param")

(test:suite 'curve:subsegment-picked-param)

(test:add-case 'curve:subsegment-picked-param 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:subsegment-picked-param (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
