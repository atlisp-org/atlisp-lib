; test-pickset-ssget-crossline.lsp - pickset:ssget-crossline 函数测试
(load "src/fun/test-framework")
(load "src/pickset/ssget-crossline")

(test:suite 'pickset:ssget-crossline)

(test:add-case 'pickset:ssget-crossline 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:ssget-crossline (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
