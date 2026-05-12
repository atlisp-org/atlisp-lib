;;; test-block-get-obj-by-name.lsp - block:get-obj-by-name 测试
(defun test:block-get-obj-by-name ()
  (test:suite 'block)
  (test:add-case 'block 'get-obj-by-name '((lambda () (block:get-obj-by-name))) nil)
  (test:run-all))
(test:block-get-obj-by-name)
