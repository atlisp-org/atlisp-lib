;;; test-excel-get-usedrange.lsp - excel:get-usedrange 测试
(defun test:excel-get-usedrange ()
  (test:suite 'excel)
  (test:add-case 'excel 'get-usedrange '((lambda () (vl-catch-all-apply 'excel:get-usedrange (list)))) nil)
  (test:run-all))
(test:excel-get-usedrange)
