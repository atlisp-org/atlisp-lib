; test-entity-make-leader.lsp - entity:make-leader 函数测试
(load "src/fun/test-framework")
(load "src/entity/make-leader")

(test:suite 'entity:make-leader)

(test:add-case 'entity:make-leader 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:make-leader (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
