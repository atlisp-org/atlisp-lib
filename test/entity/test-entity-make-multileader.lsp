; test-entity-make-multileader.lsp - entity:make-multileader 函数测试
(load "src/fun/test-framework")
(load "src/entity/make-multileader")

(test:suite 'entity:make-multileader)

(test:add-case 'entity:make-multileader 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:make-multileader (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
