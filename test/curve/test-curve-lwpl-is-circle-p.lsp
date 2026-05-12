; test-curve-lwpl-is-circle-p.lsp - curve:lwpl-is-circle-p 函数测试
(load "src/fun/test-framework")
(load "src/curve/lwpl-is-circle-p")

(test:suite 'curve:lwpl-is-circle-p)

(test:add-case 'curve:lwpl-is-circle-p 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:lwpl-is-circle-p (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
