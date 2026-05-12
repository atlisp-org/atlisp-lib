; test-curve-join.lsp - curve:join 函数测试
(load "src/fun/test-framework")
(load "src/curve/join")

(test:suite 'curve:join)

(test:add-case 'curve:join 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:join (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
