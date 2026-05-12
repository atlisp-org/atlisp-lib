;;; test-json-decode-json-from-string.lsp - json:decode-json-from-string 测试
(defun test:json-decode-json-from-string ()
  (test:suite 'json)
  (test:add-case 'json 'decode-json-from-string '((lambda () (vl-catch-all-apply 'json:decode-json-from-string (list)))) nil)
  (test:run-all))
(test:json-decode-json-from-string)
