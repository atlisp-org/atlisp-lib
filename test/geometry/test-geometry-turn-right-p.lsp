;;; test-geometry-turn-right-p.lsp - geometry:turn-right-p 测试
(defun test:geometry-turn-right-p ()
  (test:suite 'geometry)
  (test:add-case 'geometry 'turn-right-p '((lambda () (vl-catch-all-apply 'geometry:turn-right-p (list)))) nil)
  (test:run-all))
(test:geometry-turn-right-p)
