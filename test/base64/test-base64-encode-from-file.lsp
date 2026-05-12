;;; test-base64-encode-from-file.lsp - base64:encode-from-file 测试
(defun test:base64-encode-from-file ()
  (test:suite 'base64)
  (test:add-case 'base64 'encode-from-file '((lambda () (vl-catch-all-apply 'base64:encode-from-file (list)))) nil)
  (test:run-all))
(test:base64-encode-from-file)
