;;; test-base64-encode.lsp - base64:encode 测试
(defun test:base64-encode ()
  (test:suite 'base64)
  (test:add-case 'base64 'encode '((lambda () (vl-catch-all-apply 'base64:encode (list)))) nil)
  (test:run-all))
(test:base64-encode)
