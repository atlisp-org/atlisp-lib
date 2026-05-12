; test-curve-circle2lwpl.lsp - curve:circle2lwpl 函数测试
(load "src/fun/test-framework")
(load "src/curve/circle2lwpl")

(test:suite 'curve:circle2lwpl)

(test:add-case 'curve:circle2lwpl 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:circle2lwpl (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
