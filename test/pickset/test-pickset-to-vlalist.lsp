; test-pickset-to-vlalist.lsp - pickset:to-vlalist 函数测试
(load "src/fun/test-framework")
(load "src/pickset/to-vlalist")

(test:suite 'pickset:to-vlalist)

(test:add-case 'pickset:to-vlalist 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:to-vlalist (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
