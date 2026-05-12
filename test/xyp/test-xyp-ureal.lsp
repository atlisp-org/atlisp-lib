;;; test-xyp-ureal.lsp - xyp:ureal 测试
(defun test:xyp-ureal ()
  (test:suite 'xyp)
  (test:add-case 'xyp 'ureal '((lambda () (vl-catch-all-apply 'xyp:ureal (list)))) nil)
  (test:run-all))
(test:xyp-ureal)
