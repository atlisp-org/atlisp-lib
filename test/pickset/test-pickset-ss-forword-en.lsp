; test-pickset-ss-forword-en.lsp - pickset:ss-forword-en 函数测试
(load "src/fun/test-framework")
(load "src/pickset/ss-forword-en")

(test:suite 'pickset:ss-forword-en)

(test:add-case 'pickset:ss-forword-en 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:ss-forword-en (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
