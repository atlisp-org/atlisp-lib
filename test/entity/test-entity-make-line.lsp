; test-entity-make-line.lsp - entity:make-line 函数测试
(load "src/fun/test-framework")
(load "src/entity/make-line")

(test:suite 'entity:make-line)

(test:add-case 'entity:make-line 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:make-line (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
