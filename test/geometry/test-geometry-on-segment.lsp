;;; test-geometry-on-segment.lsp - geometry:on-segment 测试
(defun test:geometry-on-segment ()
  (test:suite 'geometry)
  (test:add-case 'geometry 'on-segment '((lambda () (vl-catch-all-apply 'geometry:on-segment (list)))) nil)
  (test:run-all))
(test:geometry-on-segment)
