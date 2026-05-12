;;; test-excel-unmerge-range.lsp - excel:unmerge-range 测试
(defun test:excel-unmerge-range ()
  (test:suite 'excel)
  (test:add-case 'excel 'unmerge-range '((lambda () (vl-catch-all-apply 'excel:unmerge-range (list)))) nil)
  (test:run-all))
(test:excel-unmerge-range)
