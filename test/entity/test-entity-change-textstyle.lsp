; test-entity-change-textstyle.lsp - entity:change-textstyle 函数测试
(load "src/fun/test-framework")
(load "src/entity/change-textstyle")

(test:suite 'entity:change-textstyle)

(test:add-case 'entity:change-textstyle 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:change-textstyle (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
