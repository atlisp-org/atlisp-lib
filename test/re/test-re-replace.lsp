;;; test-re-replace.lsp - re:replace 测试
(defun test:re-replace ()
  (test:suite 're)
  (test:add-case 're 'replace '((lambda () (vl-catch-all-apply 're:replace (list)))) nil)
  (test:run-all))
(test:re-replace)
