;;; test-ext-anchor-hiddenfun.lsp - ext:anchor-hiddenfun 测试
(defun test:ext-anchor-hiddenfun ()
  (test:suite 'ext)
  (test:add-case 'ext 'anchor-hiddenfun '((lambda () (vl-catch-all-apply 'ext:anchor-hiddenfun (list 'beep "")))) nil)
  (test:run-all))
(test:ext-anchor-hiddenfun)