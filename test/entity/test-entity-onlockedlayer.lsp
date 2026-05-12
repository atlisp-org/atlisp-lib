; test-entity-onlockedlayer.lsp - entity:onlockedlayer 函数测试
(load "src/fun/test-framework")
(load "src/entity/onlockedlayer")

(test:suite 'entity:onlockedlayer)

(test:add-case 'entity:onlockedlayer 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:onlockedlayer (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
