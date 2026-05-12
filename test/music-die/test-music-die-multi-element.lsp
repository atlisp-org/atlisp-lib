;;; test-music-die-multi-element.lsp - music-die:multi-element 测试
(defun test:music-die-multi-element ()
  (test:suite 'music-die)
  (test:add-case 'music-die 'multi-element '((lambda () (vl-catch-all-apply 'music-die:multi-element (list 123 3)))) '(123 123 123))
  (test:run-all))
(test:music-die-multi-element)