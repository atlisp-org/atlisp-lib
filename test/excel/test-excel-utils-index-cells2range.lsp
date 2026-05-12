;;; test-excel-utils-index-cells2range.lsp - excel:utils-index-cells2range 测试
(defun test:excel-utils-index-cells2range ()
  (test:suite 'excel)
  (test:add-case 'excel 'utils-index-cells2range '((lambda () (vl-catch-all-apply 'excel:utils-index-cells2range (list)))) nil)
  (test:run-all))
(test:excel-utils-index-cells2range)
