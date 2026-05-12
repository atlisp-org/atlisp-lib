;;; test-std-tbl-rename.lsp - std:tbl-rename 测试
(defun test:std-tbl-rename ()
  (test:suite 'std)
  (test:add-case 'std 'tbl-rename '((lambda () (vl-catch-all-apply 'std:tbl-rename (list)))) nil)
  (test:run-all))
(test:std-tbl-rename)
