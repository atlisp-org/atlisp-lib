;;; test-style-missing-fonts.lsp - style:missing-fonts 测试
(defun test:style-missing-fonts ()
  (test:suite 'style)
  (test:add-case 'style 'missing-fonts '((lambda () (vl-catch-all-apply 'style:missing-fonts nil))) nil)
  (test:run-all))
(test:style-missing-fonts)