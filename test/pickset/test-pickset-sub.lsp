; test-pickset-sub.lsp - pickset:sub 函数测试
(load "src/fun/test-framework")
(load "src/pickset/sub")

(test:suite 'pickset:sub)

(test:add-case 'pickset:sub 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:sub (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
