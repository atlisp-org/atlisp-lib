; test-entity-make-lwpolyline.lsp - entity:make-lwpolyline 函数测试
(load "src/fun/test-framework")
(load "src/entity/make-lwpolyline")

(test:suite 'entity:make-lwpolyline)

(test:add-case 'entity:make-lwpolyline 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:make-lwpolyline (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
