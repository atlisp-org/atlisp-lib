; test-pickset-sort.lsp - pickset:sort 函数测试
(load "src/fun/test-framework")
(load "src/pickset/sort")

(test:suite 'pickset:sort)

(test:add-case 'pickset:sort 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:sort (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
