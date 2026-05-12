; test-pickset-sort-with-dxf.lsp - pickset:sort-with-dxf 函数测试
(load "src/fun/test-framework")
(load "src/pickset/sort-with-dxf")

(test:suite 'pickset:sort-with-dxf)

(test:add-case 'pickset:sort-with-dxf 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:sort-with-dxf (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
