;;; test-text-mtext2text2.lsp - text:mtext->text2 测试
(defun test:text-mtext->text2 ()
  (test:suite 'text)
  (test:add-case 'text 'mtext->text2 '((lambda () (vl-catch-all-apply 'text:mtext->text2 (list "{test}"))) "test")
  (test:run-all))
(test:text-mtext->text2)