;;; test-point-rec-2pt-to-4pt.lsp - point:rec-2pt->4pt 测试
(defun test:point-rec-2pt->4pt ()
  (test:suite 'point)
  (test:add-case 'point 'rec-2pt->4pt '((lambda () (vl-catch-all-apply 'point:rec-2pt->4pt (list '(0 0) '(10 10)))) '((0 10) (10 10) (10 0) (0 0)))
  (test:run-all))
(test:point-rec-2pt->4pt)