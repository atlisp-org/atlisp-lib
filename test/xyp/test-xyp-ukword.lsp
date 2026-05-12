;;; test-xyp-ukword.lsp - xyp:ukword 测试
(defun test:xyp-ukword ()
  (test:suite 'xyp)
  (test:add-case 'xyp 'ukword '((lambda () (vl-catch-all-apply 'xyp:ukword (list)))) nil)
  (test:run-all))
(test:xyp-ukword)
