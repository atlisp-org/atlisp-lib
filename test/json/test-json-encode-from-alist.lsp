;;; test-json-encode-from-alist.lsp - json:encode-from-alist 测试
(defun test:json-encode-from-alist ()
  (test:suite 'json)
  (test:add-case 'json 'encode-from-alist '((lambda () (vl-catch-all-apply 'json:encode-from-alist (list)))) nil)
  (test:run-all))
(test:json-encode-from-alist)
