; test-curve-checkarc.lsp - curve:checkarc 函数测试
(load "src/fun/test-framework")
(load "src/curve/checkarc")

(test:suite 'curve:checkarc)

(test:add-case 'curve:checkarc 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:checkarc (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
