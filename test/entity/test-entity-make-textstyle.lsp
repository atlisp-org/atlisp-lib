; test-entity-make-textstyle.lsp - entity:make-textstyle 函数测试
(load "src/fun/test-framework")
(load "src/entity/make-textstyle")

(test:suite 'entity:make-textstyle)

(test:add-case 'entity:make-textstyle 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:make-textstyle (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
