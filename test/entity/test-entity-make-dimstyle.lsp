; test-entity-make-dimstyle.lsp - entity:make-dimstyle 函数测试
(load "src/fun/test-framework")
(load "src/entity/make-dimstyle")

(test:suite 'entity:make-dimstyle)

(test:add-case 'entity:make-dimstyle 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:make-dimstyle (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
