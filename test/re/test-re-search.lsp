;;; test-re-search.lsp - re:search 测试
(defun test:re-search ()
  (test:suite 're)
  (test:add-case 're 'search '((lambda () (vl-catch-all-apply 're:search (list)))) nil)
  (test:run-all))
(test:re-search)
