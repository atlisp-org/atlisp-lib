; test-entity-ltype-exists.lsp - entity:ltype-exists 函数测试
(load "src/fun/test-framework")
(load "src/entity/ltype-exists")

(test:suite 'entity:ltype-exists)

(test:add-case 'entity:ltype-exists 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:ltype-exists (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
