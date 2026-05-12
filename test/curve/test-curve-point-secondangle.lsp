; test-curve-point-secondangle.lsp - curve:point-secondangle 函数测试
(load "src/fun/test-framework")
(load "src/curve/point-secondangle")

(test:suite 'curve:point-secondangle)

(test:add-case 'curve:point-secondangle 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:point-secondangle (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
