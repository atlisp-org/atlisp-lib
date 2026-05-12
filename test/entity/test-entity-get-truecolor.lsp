; test-entity-get-truecolor.lsp - entity:get-truecolor 函数测试
(load "src/fun/test-framework")
(load "src/entity/get-truecolor")

(test:suite 'entity:get-truecolor)

(test:add-case 'entity:get-truecolor 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:get-truecolor (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
