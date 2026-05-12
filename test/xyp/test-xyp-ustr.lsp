;;; test-xyp-ustr.lsp - xyp:ustr 测试
(defun test:xyp-ustr ()
  (test:suite 'xyp)
  (test:add-case 'xyp 'ustr '((lambda () (vl-catch-all-apply 'xyp:ustr (list)))) nil)
  (test:run-all))
(test:xyp-ustr)
