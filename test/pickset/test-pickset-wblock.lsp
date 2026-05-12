; test-pickset-wblock.lsp - pickset:wblock 函数测试
(load "src/fun/test-framework")
(load "src/pickset/wblock")

(test:suite 'pickset:wblock)

(test:add-case 'pickset:wblock 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:wblock (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
