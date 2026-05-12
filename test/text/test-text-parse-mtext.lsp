;;; test-text-parse-mtext.lsp - text:parse-mtext 测试
(defun test:text-parse-mtext ()
  (test:suite 'text)
  (test:add-case 'text 'parse-mtext '((lambda () (vl-catch-all-apply 'text:parse-mtext (list "test"))) nil)
  (test:run-all))
(test:text-parse-mtext)