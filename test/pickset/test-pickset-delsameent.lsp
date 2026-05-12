; test-pickset-delsameent.lsp - pickset:delsameent 函数测试
(load "src/fun/test-framework")
(load "src/pickset/delsameent")

(test:suite 'pickset:delsameent)

(test:add-case 'pickset:delsameent 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:delsameent (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
