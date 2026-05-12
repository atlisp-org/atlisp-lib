; test-pickset-to-ax.lsp - pickset:to-ax 函数测试
(load "src/fun/test-framework")
(load "src/pickset/to-ax")

(test:suite 'pickset:to-ax)

(test:add-case 'pickset:to-ax 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:to-ax (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
