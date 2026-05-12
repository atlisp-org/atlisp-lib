;;; test-file-parse-ini.lsp - file:parse-ini 测试
(defun test:file-parse-ini ()
  (test:suite 'file)
  (test:add-case 'file 'parse-ini '((lambda () (vl-catch-all-apply 'file:parse-ini (list)))) nil)
  (test:run-all))
(test:file-parse-ini)
