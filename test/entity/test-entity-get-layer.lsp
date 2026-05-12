; test-entity-get-layer.lsp - entity:get-layer 函数测试
(load "src/fun/test-framework")
(load "src/entity/get-layer")

(test:suite 'entity:get-layer)

(test:add-case 'entity:get-layer 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:get-layer (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
