;;; test-block-set-dynprop.lsp - block:set-dynprop 测试
(defun test:block-set-dynprop ()
  (test:suite 'block)
  (test:add-case 'block 'set-dynprop '((lambda () (block:set-dynprop))) nil)
  (test:run-all))
(test:block-set-dynprop)
