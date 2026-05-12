; test-pickset-sort1.lsp - pickset:sort1 函数测试
(load "src/fun/test-framework")
(load "src/pickset/sort1")

(test:suite 'pickset:sort1)

(test:add-case 'pickset:sort1 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:sort1 (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
