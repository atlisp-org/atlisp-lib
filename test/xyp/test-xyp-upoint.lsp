;;; test-xyp-upoint.lsp - xyp:upoint 测试
(defun test:xyp-upoint ()
  (test:suite 'xyp)
  (test:add-case 'xyp 'upoint '((lambda () (vl-catch-all-apply 'xyp:upoint (list)))) nil)
  (test:run-all))
(test:xyp-upoint)
