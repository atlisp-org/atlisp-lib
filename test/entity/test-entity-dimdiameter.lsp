; test-entity-dimdiameter.lsp - entity:dimdiameter 函数测试
(load "src/fun/test-framework")
(load "src/entity/dimdiameter")

(test:suite 'entity:dimdiameter)

(test:add-case 'entity:dimdiameter 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:dimdiameter (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
