; test-entity-group.lsp - entity:group 函数测试
(load "src/fun/test-framework")
(load "src/entity/group")

(test:suite 'entity:group)

(test:add-case 'entity:group 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:group (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
