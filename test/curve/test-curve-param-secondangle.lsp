; test-curve-param-secondangle.lsp - curve:param-secondangle 函数测试
(load "src/fun/test-framework")
(load "src/curve/param-secondangle")

(test:suite 'curve:param-secondangle)

(test:add-case 'curve:param-secondangle 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:param-secondangle (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
