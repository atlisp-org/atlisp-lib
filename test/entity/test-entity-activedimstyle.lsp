; test-entity-activedimstyle.lsp - entity:activedimstyle 函数测试
(load "src/fun/test-framework")
(load "src/entity/activedimstyle")

(test:suite 'entity:activedimstyle)

(test:add-case 'entity:activedimstyle 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:activedimstyle (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
