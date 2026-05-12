;;; test-geometry-dist-pt-line.lsp - geometry:dist-pt-line 测试
(defun test:geometry-dist-pt-line ()
  (test:suite 'geometry)
  (test:add-case 'geometry 'dist-pt-line '((lambda () (vl-catch-all-apply 'geometry:dist-pt-line (list)))) nil)
  (test:run-all))
(test:geometry-dist-pt-line)
