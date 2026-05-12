; test-entity-gettextbox.lsp - entity:gettextbox 函数测试
(load "src/fun/test-framework")
(load "src/entity/gettextbox")

(test:suite 'entity:gettextbox)

(test:add-case 'entity:gettextbox 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'entity:gettextbox (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
