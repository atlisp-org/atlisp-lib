; test-entity-gettable.lsp - entity:gettable 函数测试
(load "src/fun/test-framework")
(load "src/entity/gettable")

(test:suite 'entity:gettable)

(test:add-case 'entity:gettable 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:gettable (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
