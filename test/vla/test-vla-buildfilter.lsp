;;; test-vla-buildfilter.lsp - vla:buildfilter 测试
(defun test:vla-buildfilter ()
  (test:suite 'vla)
  (test:add-case 'vla 'buildfilter '((lambda () (vl-catch-all-apply 'vla:buildfilter (list)))) nil)
  (test:run-all))
(test:vla-buildfilter)
