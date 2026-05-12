;;; test-excel-range-mergep.lsp - excel:range-mergep 测试
(defun test:excel-range-mergep ()
  (test:suite 'excel)
  (test:add-case 'excel 'range-mergep '((lambda () (vl-catch-all-apply 'excel:range-mergep (list)))) nil)
  (test:run-all))
(test:excel-range-mergep)
