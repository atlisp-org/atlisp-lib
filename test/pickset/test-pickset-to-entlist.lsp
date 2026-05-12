; test-pickset-to-entlist.lsp - pickset:to-entlist 函数测试
(load "src/fun/test-framework")
(load "src/pickset/to-entlist")

(test:suite 'pickset:to-entlist)

(test:add-case 'pickset:to-entlist 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:to-entlist (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
