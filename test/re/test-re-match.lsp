;;; test-re-match.lsp - re:match 测试
(defun test:re-match ()
  (test:suite 're)
  (test:add-case 're 'match '((lambda () (vl-catch-all-apply 're:match (list)))) nil)
  (test:run-all))
(test:re-match)
