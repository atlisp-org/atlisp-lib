; test-pickset-to-selectionset.lsp - pickset:to-selectionset 函数测试
(load "src/fun/test-framework")
(load "src/pickset/to-selectionset")

(test:suite 'pickset:to-selectionset)

(test:add-case 'pickset:to-selectionset 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:to-selectionset (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
