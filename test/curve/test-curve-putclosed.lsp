; test-curve-putclosed.lsp - curve:putclosed 函数测试
(load "src/fun/test-framework")
(load "src/curve/putclosed")

(test:suite 'curve:putclosed)

(test:add-case 'curve:putclosed 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:putclosed (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
