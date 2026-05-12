; test-pickset-zoom.lsp - pickset:zoom 函数测试
(load "src/fun/test-framework")
(load "src/pickset/zoom")

(test:suite 'pickset:zoom)

(test:add-case 'pickset:zoom 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:zoom (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
