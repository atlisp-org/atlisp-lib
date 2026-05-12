; test-entity-make-polyline.lsp - entity:make-polyline 函数测试
(load "src/fun/test-framework")
(load "src/entity/make-polyline")

(test:suite 'entity:make-polyline)

(test:add-case 'entity:make-polyline 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:make-polyline (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
