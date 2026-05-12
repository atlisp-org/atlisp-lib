; test-entity-make-lines.lsp - entity:make-lines 函数测试
(load "src/fun/test-framework")
(load "src/entity/make-lines")

(test:suite 'entity:make-lines)

(test:add-case 'entity:make-lines 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:make-lines (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
