;;; test-music-die-list-to-var.lsp - music-die:list-to-var 测试
(defun test:music-die-list-to-var ()
  (test:suite 'music-die)
  (test:add-case 'music-die 'list-to-var '((lambda () (vl-catch-all-apply 'music-die:list-to-var (list '((1 2 3) (4 5 6)))))) nil)
  (test:run-all))
(test:music-die-list-to-var)