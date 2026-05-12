;;; test-file-subst-all.lsp - file:subst-all 测试
(defun test:file-subst-all ()
  (test:suite 'file)
  (test:add-case 'file 'subst-all '((lambda () (vl-catch-all-apply 'file:subst-all (list)))) nil)
  (test:run-all))
(test:file-subst-all)
