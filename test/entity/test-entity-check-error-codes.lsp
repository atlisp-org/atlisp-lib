; test-entity-check-error-codes.lsp - entity:check-error-codes 函数测试
(load "src/fun/test-framework")
(load "src/entity/check-error-codes")

(test:suite 'entity:check-error-codes)

(test:add-case 'entity:check-error-codes 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:check-error-codes (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
