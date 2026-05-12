; test-entity-dimhorizontal.lsp - entity:dimhorizontal 函数测试
(load "src/fun/test-framework")
(load "src/entity/dimhorizontal")

(test:suite 'entity:dimhorizontal)

(test:add-case 'entity:dimhorizontal 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:dimhorizontal (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
