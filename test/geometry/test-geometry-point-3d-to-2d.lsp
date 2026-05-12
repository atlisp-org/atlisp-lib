;;; test-geometry-point-3d-to-2d.lsp - geometry:point-3d-to-2d 测试
(defun test:geometry-point-3d-to-2d ()
  (test:suite 'geometry)
  (test:add-case 'geometry 'point-3d-to-2d '((lambda () (vl-catch-all-apply 'geometry:point-3d-to-2d (list)))) nil)
  (test:run-all))
(test:geometry-point-3d-to-2d)
