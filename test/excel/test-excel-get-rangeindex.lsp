;;; test-excel-get-rangeindex.lsp - excel:get-rangeindex 测试
(defun test:excel-get-rangeindex ()
  (test:suite 'excel)
  (test:add-case 'excel 'get-rangeindex '((lambda () (vl-catch-all-apply 'excel:get-rangeindex (list)))) nil)
  (test:run-all))
(test:excel-get-rangeindex)
