; test-entity-make-circle.lsp - entity:make-circle 函数测试
(load "src/fun/test-framework")
(load "src/entity/make-circle")

(test:suite 'entity:make-circle)

(test:add-case 'entity:make-circle 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:make-circle (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
