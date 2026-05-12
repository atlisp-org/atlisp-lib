; test-curve-arc2lwpl.lsp - curve:arc2lwpl 函数测试
(load "src/fun/test-framework")
(load "src/curve/arc2lwpl")

(test:suite 'curve:arc2lwpl)

(test:add-case 'curve:arc2lwpl 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:arc2lwpl (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
