; test-entity-dimradius.lsp - entity:dimradius 函数测试
(load "src/fun/test-framework")
(load "src/entity/dimradius")

(test:suite 'entity:dimradius)

(test:add-case 'entity:dimradius 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:dimradius (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
