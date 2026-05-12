; test-entity-boundary.lsp - entity:boundary 函数测试
(load "src/fun/test-framework")
(load "src/entity/boundary")

(test:suite 'entity:boundary)

(test:add-case 'entity:boundary 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:boundary (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
