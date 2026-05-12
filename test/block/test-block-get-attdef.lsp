;;; test-block-get-attdef.lsp - block:get-attdef 测试
(defun test:block-get-attdef ()
  (test:suite 'block)
  (test:add-case 'block 'get-attdef '((lambda () (block:get-attdef))) nil)
  (test:run-all))
(test:block-get-attdef)
