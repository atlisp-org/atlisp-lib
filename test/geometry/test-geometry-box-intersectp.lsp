;;; test-geometry-box-intersectp.lsp - geometry:box-intersectp 测试
(defun test:geometry-box-intersectp ()
  (test:suite 'geometry)
  (test:add-case 'geometry 'box-intersectp '((lambda () (vl-catch-all-apply 'geometry:box-intersectp (list)))) nil)
  (test:run-all))
(test:geometry-box-intersectp)
