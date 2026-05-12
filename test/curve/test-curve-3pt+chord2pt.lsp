; test-curve-3pt+chord2pt.lsp - curve:3pt+chord2pt 函数测试
(load "src/fun/test-framework")
(load "src/curve/3pt+chord2pt")

(test:suite 'curve:3pt+chord2pt)

(test:add-case 'curve:3pt+chord2pt 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:3pt+chord2pt (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
