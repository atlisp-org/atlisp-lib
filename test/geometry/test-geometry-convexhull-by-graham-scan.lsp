;;; test-geometry-convexhull-by-graham-scan.lsp - geometry:convexhull-by-graham-scan 测试
(defun test:geometry-convexhull-by-graham-scan ()
  (test:suite 'geometry)
  (test:add-case 'geometry 'convexhull-by-graham-scan '((lambda () (vl-catch-all-apply 'geometry:convexhull-by-graham-scan (list)))) nil)
  (test:run-all))
(test:geometry-convexhull-by-graham-scan)
