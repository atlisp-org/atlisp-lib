; test-entity-getdxf.lsp - entity:getdxf 函数测试
(load "src/fun/test-framework")
(load "src/entity/getdxf")

(test:suite 'entity:getdxf)

(test:add-case 'entity:getdxf 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:getdxf (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
