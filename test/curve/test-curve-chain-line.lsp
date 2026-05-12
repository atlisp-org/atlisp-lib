; test-curve-chain-line.lsp - curve:chain-line 函数测试
(load "src/fun/test-framework")
(load "src/curve/chain-line")

(test:suite 'curve:chain-line)

(test:add-case 'curve:chain-line 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:chain-line (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
