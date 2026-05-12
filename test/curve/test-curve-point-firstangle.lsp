; test-curve-point-firstangle.lsp - curve:point-firstangle 函数测试
(load "src/fun/test-framework")
(load "src/curve/point-firstangle")

(test:suite 'curve:point-firstangle)

(test:add-case 'curve:point-firstangle 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:point-firstangle (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
