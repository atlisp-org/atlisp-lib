; test-curve-pt-in-arc-p.lsp - curve:pt-in-arc-p 函数测试
(load "src/fun/test-framework")
(load "src/curve/pt-in-arc-p")

(test:suite 'curve:pt-in-arc-p)

(test:add-case 'curve:pt-in-arc-p 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:pt-in-arc-p (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
