; test-entity-line.lsp - entity:line 函数测试
(load "src/fun/test-framework")
(load "src/entity/line")

(test:suite 'entity:line)

(test:add-case 'entity:line 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:line (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
