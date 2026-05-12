;;; test-base64-decode.lsp - base64:decode 测试
(defun test:base64-decode ()
  (test:suite 'base64)
  (test:add-case 'base64 'decode '((lambda () (vl-catch-all-apply 'base64:decode (list)))) nil)
  (test:run-all))
(test:base64-decode)
