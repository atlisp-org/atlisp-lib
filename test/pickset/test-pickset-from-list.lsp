; test-pickset-from-list.lsp - pickset:from-list 函数测试
(load "src/fun/test-framework")
(load "src/pickset/from-list")

(test:suite 'pickset:from-list)

(test:add-case 'pickset:from-list 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:from-list (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
