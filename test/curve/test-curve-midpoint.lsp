; test-curve-midpoint.lsp - curve:midpoint 函数测试
(load "src/fun/test-framework")
(load "src/curve/midpoint")

(test:suite 'curve:midpoint)

(test:add-case 'curve:midpoint 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:midpoint (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
