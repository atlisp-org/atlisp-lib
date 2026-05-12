; test-pickset-to-array.lsp - pickset:to-array 函数测试
(load "src/fun/test-framework")
(load "src/pickset/to-array")

(test:suite 'pickset:to-array)

(test:add-case 'pickset:to-array 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:to-array (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
