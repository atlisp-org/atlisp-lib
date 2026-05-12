; test-pickset-ssget.lsp - pickset:ssget 函数测试
(load "src/fun/test-framework")
(load "src/pickset/ssget")

(test:suite 'pickset:ssget)

(test:add-case 'pickset:ssget 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:ssget (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
