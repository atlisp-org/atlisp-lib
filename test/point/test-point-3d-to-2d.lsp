;;; test-point-3d-to-2d.lsp - point:3d->2d 测试
(defun test:point-3d->2d ()
  (test:suite 'point)
  (test:add-case 'point '3d->2d '((lambda () (vl-catch-all-apply 'point:3d->2d (list '(5 5 10)))) '(5.0 5.0))
  (test:run-all))
(test:point-3d->2d)