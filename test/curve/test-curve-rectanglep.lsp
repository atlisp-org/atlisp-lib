; test-curve-rectanglep.lsp - curve:rectanglep 函数测试
(load "src/fun/test-framework")
(load "src/curve/rectanglep")

(test:suite 'curve:rectanglep)

(test:add-case 'curve:rectanglep 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:rectanglep (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
