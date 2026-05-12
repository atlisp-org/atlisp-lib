;;; test-base64-base64-to-file.lsp - base64:base64-to-file 测试
(defun test:base64-base64-to-file ()
  (test:suite 'base64)
  (test:add-case 'base64 'base64-to-file '((lambda () (vl-catch-all-apply 'base64:base64-to-file (list)))) nil)
  (test:run-all))
(test:base64-base64-to-file)
