; test-entity-make-rectangle.lsp - entity:make-rectangle 函数测试
(load "src/fun/test-framework")
(load "src/entity/make-rectangle")

(test:suite 'entity:make-rectangle)

(test:add-case 'entity:make-rectangle 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:make-rectangle (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
