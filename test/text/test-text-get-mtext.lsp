;;; test-text-get-mtext.lsp - text:get-mtext 测试
(defun test:text-get-mtext ()
  (test:suite 'text)
  (test:add-case 'text 'get-mtext '((lambda () (vl-catch-all-apply 'text:get-mtext (list nil)))) nil)
  (test:run-all))
(test:text-get-mtext)