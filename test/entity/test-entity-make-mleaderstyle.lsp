; test-entity-make-mleaderstyle.lsp - entity:make-mleaderstyle 函数测试
(load "src/fun/test-framework")
(load "src/entity/make-mleaderstyle")

(test:suite 'entity:make-mleaderstyle)

(test:add-case 'entity:make-mleaderstyle 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:make-mleaderstyle (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
