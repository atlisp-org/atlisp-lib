;;; test-table-read-csv.lsp - table:read-csv 测试
(defun test:table-read-csv ()
  (test:suite 'table)
  (test:add-case 'table 'read-csv '((lambda () (vl-catch-all-apply 'table:read-csv (list)))) nil)
  (test:run-all))
(test:table-read-csv)
