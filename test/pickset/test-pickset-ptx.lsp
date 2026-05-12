; test-pickset-ptx.lsp - pickset:ptx 函数测试
(load "src/fun/test-framework")
(load "src/pickset/ptx")

(test:suite 'pickset:ptx)

(test:add-case 'pickset:ptx 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:ptx (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
