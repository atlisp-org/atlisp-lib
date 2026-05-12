; test-entity-linetypes.lsp - entity:linetypes 函数测试
(load "src/fun/test-framework")
(load "src/entity/linetypes")

(test:suite 'entity:linetypes)

(test:add-case 'entity:linetypes 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:linetypes (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
