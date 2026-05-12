;;; test-geometry-convexhull-by-jarvis.lsp - geometry:convexhull-by-jarvis 测试
(defun test:geometry-convexhull-by-jarvis ()
  (test:suite 'geometry)
  (test:add-case 'geometry 'convexhull-by-jarvis '((lambda () (vl-catch-all-apply 'geometry:convexhull-by-jarvis (list)))) nil)
  (test:run-all))
(test:geometry-convexhull-by-jarvis)
