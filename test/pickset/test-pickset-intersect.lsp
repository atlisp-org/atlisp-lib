; test-pickset-intersect.lsp - pickset:intersect 函数测试
(load "src/fun/test-framework")
(load "src/pickset/intersect")

(test:suite 'pickset:intersect)

(test:add-case 'pickset:intersect 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:intersect (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
