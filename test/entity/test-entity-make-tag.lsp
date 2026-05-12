; test-entity-make-tag.lsp - entity:make-tag 函数测试
(load "src/fun/test-framework")
(load "src/entity/make-tag")

(test:suite 'entity:make-tag)

(test:add-case 'entity:make-tag 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:make-tag (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
