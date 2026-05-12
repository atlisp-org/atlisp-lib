; test-curve-pickclosepointto.lsp - curve:pickclosepointto 函数测试
(load "src/fun/test-framework")
(load "src/curve/pickclosepointto")

(test:suite 'curve:pickclosepointto)

(test:add-case 'curve:pickclosepointto 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'curve:pickclosepointto (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
