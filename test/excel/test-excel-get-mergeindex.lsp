;;; test-excel-get-mergeindex.lsp - excel:get-mergeindex 测试
(defun test:excel-get-mergeindex ()
  (test:suite 'excel)
  (test:add-case 'excel 'get-mergeindex '((lambda () (vl-catch-all-apply 'excel:get-mergeindex (list)))) nil)
  (test:run-all))
(test:excel-get-mergeindex)
