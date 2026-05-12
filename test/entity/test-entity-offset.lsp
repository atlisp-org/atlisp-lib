; test-entity-offset.lsp - entity:offset 函数测试
(load "src/fun/test-framework")
(load "src/entity/offset")

(test:suite 'entity:offset)

(test:add-case 'entity:offset 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:offset (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
