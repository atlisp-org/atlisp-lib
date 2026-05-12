; test-entity-dimvertical.lsp - entity:dimvertical 函数测试
(load "src/fun/test-framework")
(load "src/entity/dimvertical")

(test:suite 'entity:dimvertical)

(test:add-case 'entity:dimvertical 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:dimvertical (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
