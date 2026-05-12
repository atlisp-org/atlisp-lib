; test-curve-circle2pts.lsp - curve:circle2pts 函数测试
(load "src/fun/test-framework")
(load "src/curve/circle2pts")

(test:suite 'curve:circle2pts)

(test:add-case 'curve:circle2pts 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:circle2pts (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
