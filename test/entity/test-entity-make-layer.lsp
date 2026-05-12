; test-entity-make-layer.lsp - entity:make-layer 函数测试
(load "src/fun/test-framework")
(load "src/entity/make-layer")

(test:suite 'entity:make-layer)

(test:add-case 'entity:make-layer 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:make-layer (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
