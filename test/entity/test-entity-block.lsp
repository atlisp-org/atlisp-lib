; test-entity-block.lsp - entity:block 函数测试
(load "src/fun/test-framework")
(load "src/entity/block")

(test:suite 'entity:block)

(test:add-case 'entity:block 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:block (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
