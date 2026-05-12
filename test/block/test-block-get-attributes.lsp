;;; test-block-get-attributes.lsp - block:get-attributes 测试
(defun test:block-get-attributes ()
  (test:suite 'block)
  (test:add-case 'block 'get-attributes '((lambda () (block:get-attributes))) nil)
  (test:run-all))
(test:block-get-attributes)
