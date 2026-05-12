;;; test-geometry-wcs2ucs.lsp - geometry:wcs2ucs 测试
(defun test:geometry-wcs2ucs ()
  (test:suite 'geometry)
  (test:add-case 'geometry 'wcs2ucs '((lambda () (vl-catch-all-apply 'geometry:wcs2ucs (list)))) nil)
  (test:run-all))
(test:geometry-wcs2ucs)
