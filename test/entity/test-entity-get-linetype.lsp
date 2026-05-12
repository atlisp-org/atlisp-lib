; test-entity-get-linetype.lsp - entity:get-linetype 函数测试
(load "src/fun/test-framework")
(load "src/entity/get-linetype")

(test:suite 'entity:get-linetype)

(test:add-case 'entity:get-linetype 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:get-linetype (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
