; test-entity-addhatch.lsp - entity:addhatch 函数测试
(load "src/fun/test-framework")
(load "src/entity/addhatch")

(test:suite 'entity:addhatch)

(test:add-case 'entity:addhatch 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:addhatch (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
