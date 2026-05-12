; test-entity-spline.lsp - entity:spline 函数测试
(load "src/fun/test-framework")
(load "src/entity/spline")

(test:suite 'entity:spline)

(test:add-case 'entity:spline 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:spline (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
