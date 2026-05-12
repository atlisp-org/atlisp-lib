;;; test-table-make.lsp - table:make 测试
(defun test:table-make ()
  (test:suite 'table)
  (test:add-case 'table 'make '((lambda () (vl-catch-all-apply 'table:make (list)))) nil)
  (test:run-all))
(test:table-make)
