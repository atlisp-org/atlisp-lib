; test-pickset-get-sub.lsp - pickset:get-sub 函数测试
(load "src/fun/test-framework")
(load "src/pickset/get-sub")

(test:suite 'pickset:get-sub)

(test:add-case 'pickset:get-sub 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:get-sub (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
