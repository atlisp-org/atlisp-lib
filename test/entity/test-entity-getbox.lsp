; test-entity-getbox.lsp - entity:getbox 函数测试
(load "src/fun/test-framework")
(load "src/entity/getbox")

(test:suite 'entity:getbox)

(test:add-case 'entity:getbox 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:getbox (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
