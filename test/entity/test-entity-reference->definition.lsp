; test-entity-reference->definition.lsp - entity:reference->definition 函数测试
(load "src/fun/test-framework")
(load "src/entity/reference->definition")

(test:suite 'entity:reference->definition)

(test:add-case 'entity:reference->definition 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:reference->definition (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
