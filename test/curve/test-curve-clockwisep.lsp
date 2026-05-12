; test-curve-clockwisep.lsp - curve:clockwisep 函数测试
(load "src/fun/test-framework")
(load "src/curve/clockwisep")

(test:suite 'curve:clockwisep)

(test:add-case 'curve:clockwisep 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:clockwisep (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
