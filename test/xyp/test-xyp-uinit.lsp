;;; test-xyp-uinit.lsp - xyp:uinit 测试
(defun test:xyp-uinit ()
  (test:suite 'xyp)
  (test:add-case 'xyp 'uinit '((lambda () (vl-catch-all-apply 'xyp:uinit (list)))) nil)
  (test:run-all))
(test:xyp-uinit)
