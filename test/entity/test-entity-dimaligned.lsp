; test-entity-dimaligned.lsp - entity:dimaligned 函数测试
(load "src/fun/test-framework")
(load "src/entity/dimaligned")

(test:suite 'entity:dimaligned)

(test:add-case 'entity:dimaligned 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:dimaligned (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
