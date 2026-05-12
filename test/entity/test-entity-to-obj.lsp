; test-entity-to-obj.lsp - entity:to-obj 函数测试
(load "src/fun/test-framework")
(load "src/entity/to-obj")

(test:suite 'entity:to-obj)

(test:add-case 'entity:to-obj 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:to-obj (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
