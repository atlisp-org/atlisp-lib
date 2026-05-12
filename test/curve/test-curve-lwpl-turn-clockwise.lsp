; test-curve-lwpl-turn-clockwise.lsp - curve:lwpl-turn-clockwise 函数测试
(load "src/fun/test-framework")
(load "src/curve/lwpl-turn-clockwise")

(test:suite 'curve:lwpl-turn-clockwise)

(test:add-case 'curve:lwpl-turn-clockwise 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:lwpl-turn-clockwise (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
