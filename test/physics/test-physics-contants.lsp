;;; test-physics-contants.lsp - physics:contants 测试
(defun test:physics-contants ()
  (test:suite 'physics)
  (test:add-case 'physics 'contants '((lambda () (vl-catch-all-apply 'physics:contants nil))) nil)
  (test:run-all))
(test:physics-contants)