;;; test-geometry-segment-by-line.lsp - geometry:segment-by-line 测试
(defun test:geometry-segment-by-line ()
  (test:suite 'geometry)
  (test:add-case 'geometry 'segment-by-line '((lambda () (vl-catch-all-apply 'geometry:segment-by-line (list)))) nil)
  (test:run-all))
(test:geometry-segment-by-line)
