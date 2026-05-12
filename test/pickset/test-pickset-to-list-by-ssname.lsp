; test-pickset-to-list-by-ssname.lsp - pickset:to-list-by-ssname 函数测试
(load "src/fun/test-framework")
(load "src/pickset/to-list-by-ssname")

(test:suite 'pickset:to-list-by-ssname)

(test:add-case 'pickset:to-list-by-ssname 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:to-list-by-ssname (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
