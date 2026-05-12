; test-pickset-sort-by-box.lsp - pickset:sort-by-box 函数测试
(load "src/fun/test-framework")
(load "src/pickset/sort-by-box")

(test:suite 'pickset:sort-by-box)

(test:add-case 'pickset:sort-by-box 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:sort-by-box (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
