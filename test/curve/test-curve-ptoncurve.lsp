; test-curve-ptoncurve.lsp - curve:ptoncurve 函数测试
(load "src/fun/test-framework")
(load "src/curve/ptoncurve")

(test:suite 'curve:ptoncurve)

(test:add-case 'curve:ptoncurve 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:ptoncurve (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
