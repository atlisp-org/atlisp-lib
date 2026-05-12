;;; test-std-layers.lsp - std:layers 测试
(defun test:std-layers ()
  (test:suite 'std)
  (test:add-case 'std 'layers '((lambda () (vl-catch-all-apply 'std:layers (list)))) nil)
  (test:run-all))
(test:std-layers)
