; test-pickset-boxs.lsp - pickset:boxs 函数测试
(load "src/fun/test-framework")
(load "src/pickset/boxs")

(test:suite 'pickset:boxs)

(test:add-case 'pickset:boxs 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:boxs (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
