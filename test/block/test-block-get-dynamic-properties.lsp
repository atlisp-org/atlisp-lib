;;; test-block-get-dynamic-properties.lsp - block:get-dynamic-properties 测试
(defun test:block-get-dynamic-properties ()
  (test:suite 'block)
  (test:add-case 'block 'get-dynamic-properties '((lambda () (block:get-dynamic-properties))) nil)
  (test:run-all))
(test:block-get-dynamic-properties)
