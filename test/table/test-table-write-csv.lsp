;;; test-table-write-csv.lsp - table:write-csv 测试
(defun test:table-write-csv ()
  (test:suite 'table)
  (test:add-case 'table 'write-csv '((lambda () (vl-catch-all-apply 'table:write-csv (list)))) nil)
  (test:run-all))
(test:table-write-csv)
