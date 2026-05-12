;;; test-geometry-ucs-angle.lsp - geometry:ucs-angle 测试
(defun test:geometry-ucs-angle ()
  (test:suite 'geometry)
  (test:add-case 'geometry 'ucs-angle '((lambda () (vl-catch-all-apply 'geometry:ucs-angle (list)))) nil)
  (test:run-all))
(test:geometry-ucs-angle)
