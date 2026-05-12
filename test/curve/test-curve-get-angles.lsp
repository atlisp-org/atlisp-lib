; test-curve-get-angles.lsp - curve:get-angles 函数测试
(load "src/fun/test-framework")
(load "src/curve/get-angles")

(test:suite 'curve:get-angles)

(test:add-case 'curve:get-angles 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:get-angles (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
