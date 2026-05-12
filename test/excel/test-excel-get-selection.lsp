;;; test-excel-get-selection.lsp - excel:get-selection 测试
(defun test:excel-get-selection ()
  (test:suite 'excel)
  (test:add-case 'excel 'get-selection '((lambda () (vl-catch-all-apply 'excel:get-selection (list)))) nil)
  (test:run-all))
(test:excel-get-selection)
