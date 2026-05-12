;;; test-block-get-properties.lsp - block:get-properties 测试
(defun test:block-get-properties ()
  (test:suite 'block)
  (test:add-case 'block 'get-properties '((lambda () (block:get-properties))) nil)
  (test:run-all))
(test:block-get-properties)
