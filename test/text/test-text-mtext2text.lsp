;;; test-text-mtext2text.lsp - text:mtext->text 测试
(defun test:text-mtext->text ()
  (test:suite 'text)
  (test:add-case 'text 'mtext->text '((lambda () (vl-catch-all-apply 'text:mtext->text (list "{test}"))) "test")
  (test:add-case 'text 'mtext->text '((lambda () (vl-catch-all-apply 'text:mtext->text (list "plain"))) "plain")
  (test:run-all))
(test:text-mtext->text)