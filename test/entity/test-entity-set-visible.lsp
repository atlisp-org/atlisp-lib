; test-entity-set-visible.lsp - entity:set-visible 函数测试
(load "src/fun/test-framework")
(load "src/entity/set-visible")

(test:suite 'entity:set-visible)

(test:add-case 'entity:set-visible 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:set-visible (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
