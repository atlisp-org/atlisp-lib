; test-entity-make-pline.lsp - entity:make-pline 函数测试
(load "src/fun/test-framework")
(load "src/entity/make-pline")

(test:suite 'entity:make-pline)

(test:add-case 'entity:make-pline 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:make-pline (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
