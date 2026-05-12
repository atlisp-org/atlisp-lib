;;; test-music-die-undo1.lsp - music-die:undo1 测试
(defun test:music-die-undo1 ()
  (test:suite 'music-die)
  (test:add-case 'music-die 'undo1 '((lambda () (vl-catch-all-apply 'music-die:undo1 nil))) nil)
  (test:run-all))
(test:music-die-undo1)