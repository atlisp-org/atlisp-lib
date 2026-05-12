; test-entity-make-arrow.lsp - entity:make-arrow 函数测试
(load "src/fun/test-framework")
(load "src/entity/make-arrow")

(test:suite 'entity:make-arrow)

(test:add-case 'entity:make-arrow 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:make-arrow (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
