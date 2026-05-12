;;; test-xyp-uangle.lsp - xyp:uangle 测试
(defun test:xyp-uangle ()
  (test:suite 'xyp)
  (test:add-case 'xyp 'uangle '((lambda () (vl-catch-all-apply 'xyp:uangle (list)))) nil)
  (test:run-all))
(test:xyp-uangle)
