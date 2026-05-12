;;; test-json-encode-json-alist.lsp - json:encode-json-alist 测试
(defun test:json-encode-json-alist ()
  (test:suite 'json)
  (test:add-case 'json 'encode-json-alist '((lambda () (vl-catch-all-apply 'json:encode-json-alist (list)))) nil)
  (test:run-all))
(test:json-encode-json-alist)
