; test-entity-make-xline.lsp - entity:make-xline 函数测试
(load "src/fun/test-framework")
(load "src/entity/make-xline")

(test:suite 'entity:make-xline)

(test:add-case 'entity:make-xline 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:make-xline (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
