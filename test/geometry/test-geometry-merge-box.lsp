;;; test-geometry-merge-box.lsp - geometry:merge-box 测试
(defun test:geometry-merge-box ()
  (test:suite 'geometry)
  (test:add-case 'geometry 'merge-box '((lambda () (vl-catch-all-apply 'geometry:merge-box (list)))) nil)
  (test:run-all))
(test:geometry-merge-box)
