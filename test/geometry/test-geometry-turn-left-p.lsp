;;; test-geometry-turn-left-p.lsp - geometry:turn-left-p 测试
(defun test:geometry-turn-left-p ()
  (test:suite 'geometry)
  (test:add-case 'geometry 'turn-left-p '((lambda () (vl-catch-all-apply 'geometry:turn-left-p (list)))) nil)
  (test:run-all))
(test:geometry-turn-left-p)
