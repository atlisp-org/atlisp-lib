; test-entity-listcollection.lsp - entity:listcollection 函数测试
(load "src/fun/test-framework")
(load "src/entity/listcollection")

(test:suite 'entity:listcollection)

(test:add-case 'entity:listcollection 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:listcollection (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
