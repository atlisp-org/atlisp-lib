;;; test-block-get-dynprop.lsp - block:get-dynprop 测试
(defun test:block-get-dynprop ()
  (test:suite 'block)
  (test:add-case 'block 'get-dynprop '((lambda () (block:get-dynprop))) nil)
  (test:run-all))
(test:block-get-dynprop)
