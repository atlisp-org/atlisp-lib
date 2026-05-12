; test-entity-putdxf.lsp - entity:putdxf 函数测试
(load "src/fun/test-framework")
(load "src/entity/putdxf")

(test:suite 'entity:putdxf)

(test:add-case 'entity:putdxf 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:putdxf (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
