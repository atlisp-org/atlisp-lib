; test-curve-param-firstangle.lsp - curve:param-firstangle 函数测试
(load "src/fun/test-framework")
(load "src/curve/param-firstangle")

(test:suite 'curve:param-firstangle)

(test:add-case 'curve:param-firstangle 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:param-firstangle (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
