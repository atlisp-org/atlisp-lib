;;; test-excel-merge-range.lsp - excel:merge-range 测试
(defun test:excel-merge-range ()
  (test:suite 'excel)
  (test:add-case 'excel 'merge-range '((lambda () (vl-catch-all-apply 'excel:merge-range (list)))) nil)
  (test:run-all))
(test:excel-merge-range)
