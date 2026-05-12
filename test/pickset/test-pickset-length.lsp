; test-pickset-length.lsp - pickset:length 函数测试
(load "src/fun/test-framework")
(load "src/pickset/length")

(test:suite 'pickset:length)

(test:add-case 'pickset:length 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:length (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
