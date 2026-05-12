; test-entity-make-mtext.lsp - entity:make-mtext 函数测试
(load "src/fun/test-framework")
(load "src/entity/make-mtext")

(test:suite 'entity:make-mtext)

(test:add-case 'entity:make-mtext 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:make-mtext (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
