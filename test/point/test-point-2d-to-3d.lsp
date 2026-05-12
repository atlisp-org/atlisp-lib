;;; test-point-2d-to-3d.lsp - point:2d->3d 测试
(defun test:point-2d->3d ()
  (test:suite 'point)
  (test:add-case 'point '2d->3d '((lambda () (vl-catch-all-apply 'point:2d->3d (list '(5 5)))) '(5.0 5.0 0.0))
  (test:add-case 'point '2d->3d '((lambda () (vl-catch-all-apply 'point:2d->3d (list '(5)))) '(5.0 0.0 0.0))
  (test:add-case 'point '2d->3d '((lambda () (vl-catch-all-apply 'point:2d->3d (list 5.0))) '(5.0 0.0 0.0))
  (test:run-all))
(test:point-2d->3d)