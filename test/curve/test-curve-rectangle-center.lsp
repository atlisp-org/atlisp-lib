; test-curve-rectangle-center.lsp - curve:rectangle-center 函数测试
(load "src/fun/test-framework")
(load "src/curve/rectangle-center")

(test:suite 'curve:rectangle-center)

(test:add-case 'curve:rectangle-center 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:rectangle-center (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
