;;; test-clipboard-cleardata.lsp - clipboard:cleardata 测试
(defun test:clipboard-cleardata ()
  (test:suite 'clipboard)
  (test:add-case 'clipboard 'cleardata '((lambda () (vl-catch-all-apply 'clipboard:cleardata (list)))) nil)
  (test:run-all))
(test:clipboard-cleardata)
