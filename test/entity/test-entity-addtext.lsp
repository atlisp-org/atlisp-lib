; test-entity-addtext.lsp - entity:addtext 函数测试
(load "src/fun/test-framework")
(load "src/entity/addtext")

(test:suite 'entity:addtext)

(test:add-case 'entity:addtext 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:addtext (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
