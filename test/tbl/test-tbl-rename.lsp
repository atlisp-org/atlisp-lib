;;; test-tbl-rename.lsp - tbl:rename 测试
(defun test:tbl-rename ()
  (test:suite 'tbl)
  (test:add-case 'tbl 'rename '((lambda () (vl-catch-all-apply 'tbl:rename (list)))) nil)
  (test:run-all))
(test:tbl-rename)
