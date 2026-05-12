; test-pickset-erase.lsp - pickset:erase 函数测试
(load "src/fun/test-framework")
(load "src/pickset/erase")

(test:suite 'pickset:erase)

(test:add-case 'pickset:erase 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:erase (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
