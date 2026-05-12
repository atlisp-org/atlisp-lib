; test-entity-make-arc.lsp - entity:make-arc 函数测试
(load "src/fun/test-framework")
(load "src/entity/make-arc")

(test:suite 'entity:make-arc)

(test:add-case 'entity:make-arc 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:make-arc (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
