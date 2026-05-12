; test-pickset-to-list.lsp - pickset:to-list 函数测试
(load "src/fun/test-framework")
(load "src/pickset/to-list")

(test:suite 'pickset:to-list)

(test:add-case 'pickset:to-list 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:to-list (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
