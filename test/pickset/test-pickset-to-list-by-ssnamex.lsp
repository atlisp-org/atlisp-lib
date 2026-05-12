; test-pickset-to-list-by-ssnamex.lsp - pickset:to-list-by-ssnamex 函数测试
(load "src/fun/test-framework")
(load "src/pickset/to-list-by-ssnamex")

(test:suite 'pickset:to-list-by-ssnamex)

(test:add-case 'pickset:to-list-by-ssnamex 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:to-list-by-ssnamex (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
