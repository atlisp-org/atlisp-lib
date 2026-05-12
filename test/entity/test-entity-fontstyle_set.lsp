; test-entity-fontstyle_set.lsp - entity:fontstyle_set 函数测试
(load "src/fun/test-framework")
(load "src/entity/fontstyle_set")

(test:suite 'entity:fontstyle_set)

(test:add-case 'entity:fontstyle_set 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:fontstyle_set (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
