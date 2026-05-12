;;; test-py-install.lsp - py:install 测试
(defun test:py-install ()
  (test:suite 'py)
  (test:add-case 'py 'install '((lambda () (vl-catch-all-apply 'py:install nil))) nil)
  (test:run-all))
(test:py-install)