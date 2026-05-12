; test-entity-make-lwpline-bold.lsp - entity:make-lwpline-bold 函数测试
(load "src/fun/test-framework")
(load "src/entity/make-lwpline-bold")

(test:suite 'entity:make-lwpline-bold)

(test:add-case 'entity:make-lwpline-bold 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:make-lwpline-bold (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
