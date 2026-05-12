;;; test-xyp-udist.lsp - xyp:udist 测试
(defun test:xyp-udist ()
  (test:suite 'xyp)
  (test:add-case 'xyp 'udist '((lambda () (vl-catch-all-apply 'xyp:udist (list)))) nil)
  (test:run-all))
(test:xyp-udist)
