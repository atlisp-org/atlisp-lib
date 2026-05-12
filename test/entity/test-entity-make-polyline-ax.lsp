; test-entity-make-polyline-ax.lsp - entity:make-polyline-ax 函数测试
(load "src/fun/test-framework")
(load "src/entity/make-polyline-ax")

(test:suite 'entity:make-polyline-ax)

(test:add-case 'entity:make-polyline-ax 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:make-polyline-ax (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
