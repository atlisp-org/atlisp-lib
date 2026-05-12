; test-entity-deldxf.lsp - entity:deldxf 函数测试
(load "src/fun/test-framework")
(load "src/entity/deldxf")

(test:suite 'entity:deldxf)

(test:add-case 'entity:deldxf 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:deldxf (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
