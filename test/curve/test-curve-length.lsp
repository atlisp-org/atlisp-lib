; test-curve-length.lsp - curve:length 函数测试
(load "src/fun/test-framework")
(load "src/curve/length")

(test:suite 'curve:length)

(test:add-case 'curve:length 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:length (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
