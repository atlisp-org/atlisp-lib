;;; test-json-parse.lsp - json:parse 测试
(defun test:json-parse ()
  (test:suite 'json)
  (test:add-case 'json 'parse '((lambda () (vl-catch-all-apply 'json:parse (list)))) nil)
  (test:run-all))
(test:json-parse)
