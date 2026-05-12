; test-pickset-from-entlist.lsp - pickset:from-entlist 函数测试
(load "src/fun/test-framework")
(load "src/pickset/from-entlist")

(test:suite 'pickset:from-entlist)

(test:add-case 'pickset:from-entlist 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:from-entlist (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
