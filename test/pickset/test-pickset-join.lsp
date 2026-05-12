; test-pickset-join.lsp - pickset:join 函数测试
(load "src/fun/test-framework")
(load "src/pickset/join")

(test:suite 'pickset:join)

(test:add-case 'pickset:join 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:join (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
