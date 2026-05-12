;;; test-excel-utils-index-range2cells.lsp - excel:utils-index-range2cells 测试
(defun test:excel-utils-index-range2cells ()
  (test:suite 'excel)
  (test:add-case 'excel 'utils-index-range2cells '((lambda () (vl-catch-all-apply 'excel:utils-index-range2cells (list)))) nil)
  (test:run-all))
(test:excel-utils-index-range2cells)
