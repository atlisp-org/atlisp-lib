;;; test-geometry-segment-mid.lsp - geometry:segment-mid 测试
(defun test:geometry-segment-mid ()
  (test:suite 'geometry)
  (test:add-case 'geometry 'segment-mid '((lambda () (vl-catch-all-apply 'geometry:segment-mid (list)))) nil)
  (test:run-all))
(test:geometry-segment-mid)
