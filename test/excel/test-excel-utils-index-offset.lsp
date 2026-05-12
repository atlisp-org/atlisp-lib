;;; test-excel-utils-index-offset.lsp - excel:utils-index-offset 测试
(defun test:excel-utils-index-offset ()
  (test:suite 'excel)
  (test:add-case 'excel 'utils-index-offset '((lambda () (vl-catch-all-apply 'excel:utils-index-offset (list)))) nil)
  (test:run-all))
(test:excel-utils-index-offset)
