;;; test-iconv-code.lsp - iconv:code 测试
(defun test:iconv-code ()
  (test:suite 'iconv)
  (test:add-case 'iconv 'code '((lambda () (vl-catch-all-apply 'iconv:code (list)))) nil)
  (test:run-all))
(test:iconv-code)
