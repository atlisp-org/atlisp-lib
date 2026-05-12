;;; test-clipboard-init.lsp - clipboard:init 测试
(defun test:clipboard-init ()
  (test:suite 'clipboard)
  (test:add-case 'clipboard 'init '((lambda () (vl-catch-all-apply 'clipboard:init (list)))) nil)
  (test:run-all))
(test:clipboard-init)
