;;; test-geometry-angle.lsp - geometry:angle 测试
(defun test:geometry-angle ()
  (test:suite 'geometry)
  (test:add-case 'geometry 'angle '((lambda () (vl-catch-all-apply 'geometry:angle (list)))) nil)
  (test:run-all))
(test:geometry-angle)
