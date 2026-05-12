; test-entity-activelayer.lsp - entity:activelayer 函数测试
(load "src/fun/test-framework")
(load "src/entity/activelayer")

(test:suite 'entity:activelayer)

(test:add-case 'entity:activelayer 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:activelayer (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
