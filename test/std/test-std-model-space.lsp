;;; test-std-model-space.lsp - std:model-space 测试
(defun test:std-model-space ()
  (test:suite 'std)
  (test:add-case 'std 'model-space '((lambda () (vl-catch-all-apply 'std:model-space (list)))) nil)
  (test:run-all))
(test:std-model-space)
