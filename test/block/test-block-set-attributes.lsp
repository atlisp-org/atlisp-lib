;;; test-block-set-attributes.lsp - block:set-attributes 测试
(defun test:block-set-attributes ()
  (test:suite 'block)
  (test:add-case 'block 'set-attributes '((lambda () (block:set-attributes))) nil)
  (test:run-all))
(test:block-set-attributes)
