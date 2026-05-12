; test-entity-make-text.lsp - entity:make-text 函数测试
(load "src/fun/test-framework")
(load "src/entity/make-text")

(test:suite 'entity:make-text)

(test:add-case 'entity:make-text 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:make-text (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
