; test-entity-change-ltype.lsp - entity:change-ltype 函数测试
(load "src/fun/test-framework")
(load "src/entity/change-ltype")

(test:suite 'entity:change-ltype)

(test:add-case 'entity:change-ltype 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:change-ltype (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
