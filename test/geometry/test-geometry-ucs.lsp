;;; test-geometry-ucs.lsp - geometry:ucs 测试
(defun test:geometry-ucs ()
  (test:suite 'geometry)
  (test:add-case 'geometry 'ucs '((lambda () (vl-catch-all-apply 'geometry:ucs (list)))) nil)
  (test:run-all))
(test:geometry-ucs)
