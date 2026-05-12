; test-curve-similar-p.lsp - curve:similar-p 函数测试
(load "src/fun/test-framework")
(load "src/curve/similar-p")

(test:suite 'curve:similar-p)

(test:add-case 'curve:similar-p 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:similar-p (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
