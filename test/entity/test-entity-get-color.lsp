; test-entity-get-color.lsp - entity:get-color 函数测试
(load "src/fun/test-framework")
(load "src/entity/get-color")

(test:suite 'entity:get-color)

(test:add-case 'entity:get-color 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:get-color (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
