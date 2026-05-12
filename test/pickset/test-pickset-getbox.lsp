; test-pickset-getbox.lsp - pickset:getbox 函数测试
(load "src/fun/test-framework")
(load "src/pickset/getbox")

(test:suite 'pickset:getbox)

(test:add-case 'pickset:getbox 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:getbox (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
