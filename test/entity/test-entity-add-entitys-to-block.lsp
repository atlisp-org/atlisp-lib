; test-entity-add-entitys-to-block.lsp - entity:add-entitys-to-block 函数测试
(load "src/fun/test-framework")
(load "src/entity/add-entitys-to-block")

(test:suite 'entity:add-entitys-to-block)

(test:add-case 'entity:add-entitys-to-block 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:add-entitys-to-block (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
