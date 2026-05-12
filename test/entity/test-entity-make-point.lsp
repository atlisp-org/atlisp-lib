; test-entity-make-point.lsp - entity:make-point 函数测试
(load "src/fun/test-framework")
(load "src/entity/make-point")

(test:suite 'entity:make-point)

(test:add-case 'entity:make-point 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:make-point (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
